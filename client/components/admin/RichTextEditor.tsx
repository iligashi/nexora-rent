'use client';

import dynamic from 'next/dynamic';
import 'react-quill-new/dist/quill.snow.css';

const ReactQuill = dynamic(() => import('react-quill-new'), { ssr: false });

const modules = {
  toolbar: [
    [{ header: [1, 2, 3, false] }],
    ['bold', 'italic', 'underline', 'strike'],
    [{ color: [] }, { background: [] }],
    [{ list: 'ordered' }, { list: 'bullet' }],
    ['blockquote', 'code-block'],
    ['link', 'image'],
    ['clean'],
  ],
};

const formats = [
  'header',
  'bold', 'italic', 'underline', 'strike',
  'color', 'background',
  'list',
  'blockquote', 'code-block',
  'link', 'image',
];

interface RichTextEditorProps {
  value: string;
  onChange: (value: string) => void;
  placeholder?: string;
}

export default function RichTextEditor({ value, onChange, placeholder }: RichTextEditorProps) {
  return (
    <div className="rich-editor">
      <ReactQuill
        theme="snow"
        value={value}
        onChange={onChange}
        modules={modules}
        formats={formats}
        placeholder={placeholder}
      />
      <style jsx global>{`
        .rich-editor .ql-toolbar {
          border: 1px solid #e5e7eb;
          border-radius: 0.5rem 0.5rem 0 0;
          background: #f9fafb;
        }
        .rich-editor .ql-container {
          border: 1px solid #e5e7eb;
          border-top: none;
          border-radius: 0 0 0.5rem 0.5rem;
          font-size: 0.9375rem;
          min-height: 300px;
        }
        .rich-editor .ql-editor {
          min-height: 300px;
          line-height: 1.7;
          color: #111827;
        }
        .rich-editor .ql-editor.ql-blank::before {
          color: #9ca3af;
          font-style: normal;
        }
        .rich-editor .ql-snow .ql-picker-label,
        .rich-editor .ql-snow button {
          color: #4b5563;
        }
        .rich-editor .ql-snow button:hover,
        .rich-editor .ql-snow .ql-picker-label:hover {
          color: #FF4D30;
        }
        .rich-editor .ql-snow button.ql-active,
        .rich-editor .ql-snow .ql-picker-label.ql-active {
          color: #FF4D30;
        }
        .rich-editor .ql-snow .ql-stroke {
          stroke: #4b5563;
        }
        .rich-editor .ql-snow button:hover .ql-stroke,
        .rich-editor .ql-snow button.ql-active .ql-stroke {
          stroke: #FF4D30;
        }
        .rich-editor .ql-snow .ql-fill {
          fill: #4b5563;
        }
        .rich-editor .ql-snow button:hover .ql-fill,
        .rich-editor .ql-snow button.ql-active .ql-fill {
          fill: #FF4D30;
        }
      `}</style>
    </div>
  );
}
