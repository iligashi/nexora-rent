'use client';

import { useEffect, useState, useCallback } from 'react';
import api from '@/lib/api';
import { formatDate } from '@/lib/utils';
import DataTable from '@/components/admin/DataTable';
import AdminBadge from '@/components/admin/AdminBadge';
import RichTextEditor from '@/components/admin/RichTextEditor';
import { Plus, ArrowLeft, Eye, Trash2, Link as LinkIcon } from 'lucide-react';
import type { BlogPost } from '@/types';
import { useLanguageStore } from '@/stores/languageStore';

type View = 'list' | 'editor' | 'preview';

export default function AdminBlogPage() {
  const { t } = useLanguageStore();
  const [posts, setPosts] = useState<BlogPost[]>([]);
  const [loading, setLoading] = useState(true);
  const [view, setView] = useState<View>('list');
  const [editingPost, setEditingPost] = useState<BlogPost | null>(null);
  const [form, setForm] = useState({ title: '', content: '', excerpt: '', cover_image: '', is_published: false });
  const [saving, setSaving] = useState(false);
  const [deleting, setDeleting] = useState(false);

  const fetchPosts = useCallback(async () => {
    try {
      const { data } = await api.get('/admin/blog');
      setPosts(data.posts);
    } catch (err) {
      console.error('Failed to fetch posts:', err);
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => { fetchPosts(); }, [fetchPosts]);

  const openEditor = (post?: BlogPost) => {
    if (post) {
      setEditingPost(post);
      setForm({ title: post.title, content: post.content, excerpt: post.excerpt || '', cover_image: post.cover_image || '', is_published: post.is_published });
    } else {
      setEditingPost(null);
      setForm({ title: '', content: '', excerpt: '', cover_image: '', is_published: false });
    }
    setView('editor');
  };

  const goBack = () => {
    setView('list');
    setEditingPost(null);
  };

  const savePost = async (publish?: boolean) => {
    setSaving(true);
    try {
      const payload = { ...form };
      if (publish !== undefined) payload.is_published = publish;
      if (editingPost) {
        await api.put(`/admin/blog/${editingPost.id}`, payload);
      } else {
        await api.post('/admin/blog', payload);
      }
      goBack();
      fetchPosts();
    } catch (err) {
      console.error('Failed to save post:', err);
    } finally {
      setSaving(false);
    }
  };

  const deletePost = async () => {
    if (!editingPost || !confirm(t.confirmDelete || 'Are you sure you want to delete this post?')) return;
    setDeleting(true);
    try {
      await api.delete(`/admin/blog/${editingPost.id}`);
      goBack();
      fetchPosts();
    } catch (err) {
      console.error('Failed to delete post:', err);
    } finally {
      setDeleting(false);
    }
  };


  // ---- List View ----
  if (view === 'list') {
    const columns = [
      {
        key: 'title', label: t.title,
        render: (p: BlogPost) => (
          <div className="flex items-center gap-3">
            {p.cover_image && (
              <img src={p.cover_image} alt="" className="w-10 h-10 rounded-lg object-cover flex-shrink-0" />
            )}
            <span className="font-medium text-gray-900">{p.title}</span>
          </div>
        ),
      },
      {
        key: 'status', label: t.status,
        render: (p: BlogPost) => <AdminBadge status={p.is_published ? 'published' : 'draft'} />,
      },
      {
        key: 'created_at', label: t.created,
        render: (p: BlogPost) => <span className="text-sm text-gray-500">{formatDate(p.created_at)}</span>,
      },
      {
        key: 'actions', label: '',
        render: (p: BlogPost) => (
          <button onClick={(e) => { e.stopPropagation(); openEditor(p); }} className="text-[#FF4D30] hover:underline text-sm font-medium">
            {t.edit}
          </button>
        ),
      },
    ];

    return (
      <div className="space-y-6">
        <div className="flex items-center justify-between">
          <h1 className="text-2xl font-bold text-gray-900 font-outfit">{t.blogPosts}</h1>
          <button onClick={() => openEditor()} className="inline-flex items-center gap-2 bg-[#FF4D30] text-white px-4 py-2.5 rounded-lg text-sm font-semibold hover:bg-[#E6442B] transition-colors">
            <Plus className="w-4 h-4" /> {t.newPost}
          </button>
        </div>
        <DataTable columns={columns} data={posts} loading={loading} emptyMessage={t.noBlogPosts} />
      </div>
    );
  }

  // ---- Editor View ----
  if (view === 'editor') {
    const canSave = form.title.trim() && form.content.trim() && form.content !== '<p><br></p>';

    return (
      <div className="space-y-6">
        {/* Top bar */}
        <div className="flex items-center justify-between">
          <button onClick={goBack} className="inline-flex items-center gap-2 text-gray-600 hover:text-gray-900 text-sm font-medium transition-colors">
            <ArrowLeft className="w-4 h-4" /> {t.blogPosts}
          </button>
          <div className="flex items-center gap-3">
            {editingPost && (
              <button onClick={deletePost} disabled={deleting} className="inline-flex items-center gap-1.5 px-3 py-2 text-sm text-red-600 hover:bg-red-50 rounded-lg transition-colors">
                <Trash2 className="w-4 h-4" /> {t.delete}
              </button>
            )}
            <button onClick={() => setView('preview')} className="inline-flex items-center gap-1.5 px-4 py-2 text-sm font-medium text-gray-600 border border-gray-200 rounded-lg hover:bg-gray-50 transition-colors">
              <Eye className="w-4 h-4" /> {t.preview || 'Preview'}
            </button>
            <button
              onClick={() => savePost(false)}
              disabled={saving || !canSave}
              className="px-4 py-2 text-sm font-medium text-gray-700 border border-gray-200 rounded-lg hover:bg-gray-50 disabled:opacity-50 transition-colors"
            >
              {t.saveDraft || 'Save Draft'}
            </button>
            <button
              onClick={() => savePost(true)}
              disabled={saving || !canSave}
              className="px-5 py-2 bg-[#FF4D30] text-white text-sm font-semibold rounded-lg hover:bg-[#E6442B] disabled:opacity-50 transition-colors"
            >
              {saving ? (t.saving || 'Saving...') : (editingPost?.is_published ? (t.update || 'Update') : (t.publish || 'Publish'))}
            </button>
          </div>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          {/* Main editor area */}
          <div className="lg:col-span-2 space-y-5">
            {/* Title */}
            <div>
              <input
                type="text"
                placeholder={t.postTitlePlaceholder || 'Post title...'}
                className="w-full px-0 py-3 text-2xl font-bold text-gray-900 font-outfit placeholder:text-gray-300 border-none focus:outline-none focus:ring-0 bg-transparent"
                value={form.title}
                onChange={e => setForm(f => ({ ...f, title: e.target.value }))}
              />
              <div className="h-px bg-gray-100" />
            </div>

            {/* Rich text editor */}
            <RichTextEditor
              value={form.content}
              onChange={(val) => setForm(f => ({ ...f, content: val }))}
              placeholder={t.writeContent || 'Write your content here...'}
            />
          </div>

          {/* Sidebar */}
          <div className="space-y-5">
            {/* Cover image */}
            <div className="bg-white border border-gray-200 rounded-xl p-5">
              <h3 className="text-sm font-semibold text-gray-900 mb-3">{t.coverImage || 'Cover Image'}</h3>
              <div className="flex items-center gap-2 mb-3">
                <LinkIcon className="w-4 h-4 text-gray-400 flex-shrink-0" />
                <input
                  type="url"
                  placeholder={t.imageUrlPlaceholder || 'Paste image URL...'}
                  className="w-full px-3 py-2 bg-gray-50 border border-gray-200 rounded-lg text-sm text-gray-900 focus:outline-none focus:ring-2 focus:ring-[#FF4D30]/20 focus:border-[#FF4D30]"
                  value={form.cover_image}
                  onChange={e => setForm(f => ({ ...f, cover_image: e.target.value }))}
                />
              </div>
              {form.cover_image && (
                <div className="relative group">
                  <img src={form.cover_image} alt="Cover" className="w-full aspect-video object-cover rounded-lg" />
                  <button
                    onClick={() => setForm(f => ({ ...f, cover_image: '' }))}
                    className="absolute top-2 right-2 bg-black/60 text-white p-1.5 rounded-lg opacity-0 group-hover:opacity-100 transition-opacity"
                  >
                    <Trash2 className="w-3.5 h-3.5" />
                  </button>
                </div>
              )}
            </div>

            {/* Excerpt */}
            <div className="bg-white border border-gray-200 rounded-xl p-5">
              <h3 className="text-sm font-semibold text-gray-900 mb-3">{t.excerpt}</h3>
              <textarea
                rows={3}
                placeholder={t.excerptPlaceholder || 'Brief summary of the post...'}
                className="w-full px-3 py-2.5 bg-gray-50 border border-gray-200 rounded-lg text-sm text-gray-900 resize-none focus:outline-none focus:ring-2 focus:ring-[#FF4D30]/20 focus:border-[#FF4D30]"
                value={form.excerpt}
                onChange={e => setForm(f => ({ ...f, excerpt: e.target.value }))}
              />
            </div>

            {/* Status */}
            <div className="bg-white border border-gray-200 rounded-xl p-5">
              <h3 className="text-sm font-semibold text-gray-900 mb-3">{t.status}</h3>
              <div className="flex items-center gap-3">
                <button
                  onClick={() => setForm(f => ({ ...f, is_published: false }))}
                  className={`flex-1 py-2 text-sm font-medium rounded-lg border transition-colors ${!form.is_published ? 'bg-gray-900 text-white border-gray-900' : 'bg-white text-gray-600 border-gray-200 hover:bg-gray-50'}`}
                >
                  {t.draft || 'Draft'}
                </button>
                <button
                  onClick={() => setForm(f => ({ ...f, is_published: true }))}
                  className={`flex-1 py-2 text-sm font-medium rounded-lg border transition-colors ${form.is_published ? 'bg-[#FF4D30] text-white border-[#FF4D30]' : 'bg-white text-gray-600 border-gray-200 hover:bg-gray-50'}`}
                >
                  {t.published || 'Published'}
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }

  // ---- Preview View ----
  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <button onClick={() => setView('editor')} className="inline-flex items-center gap-2 text-gray-600 hover:text-gray-900 text-sm font-medium transition-colors">
          <ArrowLeft className="w-4 h-4" /> {t.backToEditor || 'Back to Editor'}
        </button>
        <span className="text-xs font-medium text-gray-400 uppercase tracking-wider">{t.preview || 'Preview'}</span>
      </div>

      <div className="bg-white border border-gray-200 rounded-2xl overflow-hidden">
        {form.cover_image && (
          <img src={form.cover_image} alt="" className="w-full aspect-[3/1] object-cover" />
        )}
        <div className="max-w-3xl mx-auto px-8 py-10">
          <h1 className="text-3xl font-bold text-gray-900 font-outfit mb-4">{form.title || 'Untitled'}</h1>
          {form.excerpt && <p className="text-gray-500 text-lg mb-8">{form.excerpt}</p>}
          <div className="h-px bg-gray-100 mb-8" />
          <div
            className="prose prose-lg max-w-none prose-headings:font-outfit prose-headings:text-gray-900 prose-p:text-gray-600 prose-a:text-[#FF4D30] prose-strong:text-gray-900 prose-img:rounded-xl"
            dangerouslySetInnerHTML={{ __html: form.content }}
          />
        </div>
      </div>
    </div>
  );
}
