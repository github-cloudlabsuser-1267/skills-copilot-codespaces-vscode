import { useState } from 'react';
import ReactMarkdown from 'react-markdown';

export default function MarkdownEditor() {
    const [markdown, setMarkdown] = useState('type markdown here');

    const handleChange = (event) => {
        setMarkdown(event.target.value);
    };


      // take a sentence as input
  // reverse the input sentence
  // the start of the sentence must start with a capital
  // for javascript
    return (
        <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', padding: '20px' }}>
            <textarea
                value={markdown}
                onChange={handleChange}
                rows="10"
                cols="50"
                style={{ width: '100%', marginBottom: '20px' }}
            />
            <div style={{ width: '100%', border: '1px solid #ddd', padding: '10px' }}>
                <ReactMarkdown>{markdown}</ReactMarkdown>
            </div>
        </div>
    );
}

  // take a sentence as input
  // reverse the input sentence
  // the start of the sentence must start with a capital
  // for javascript