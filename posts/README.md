# Writing in Your Blog (Zero-Server, GitHub Pages Ready)

You don't need to touch HTML, build tools, or terminal commands to write or update your blog posts! Everything is written in clean, standard **Markdown** (`.md`).

---

## 1. How to Edit Existing Posts
- Open `posts/hogamegata.md` or `posts/openlyryc.md` in VS Code, Notepad, or GitHub's web editor.
- Write your thoughts using normal Markdown:
  - `# Heading 1`
  - `## Heading 2`
  - `**bold**`, `*italic*`
  - `> Blockquotes`
  - Code blocks with ```language
  - `- Lists`
  - `[Link Text](https://...)`
- Save the file and commit. GitHub Pages will immediately render your updated text with perfect typography.

---

## 2. How to Add a New Post
1. Create a new markdown file inside `posts/`, e.g., `posts/my-new-post.md`.
2. Add your content starting with a `# Title` and an optional date subtitle.
3. Open `posts/posts.json` and add a new entry to the list:
   ```json
   {
     "id": "my-new-post",
     "title": "Title of My New Post",
     "date": "November 03, 2026",
     "readTime": "4 min read",
     "summary": "One sentence summary of the post.",
     "file": "posts/my-new-post.md",
     "tags": ["Tag1", "Tag2"],
     "cover": "hogamegata.png"
   }
   ```
4. That's it! It will automatically appear on `blog.html` and be viewable at `blog.html?post=my-new-post`.

---

## 3. Local Offline Preview
If you want to preview your posts offline in your browser before committing:
- **Option A**: Double-click `preview.bat` in the root folder (opens `http://localhost:8000/blog.html` instantly).
- **Option B**: If using VS Code, use the "Live Server" extension.
- **Option C**: When double-clicking `blog.html` directly from File Explorer (`file:///`), the built-in fallback will render seamlessly.
