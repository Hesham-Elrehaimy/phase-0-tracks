languages = {

	html: { 
		'difficulty' => 'easy',

        template: ['html', 'head', 'body'],

		elements: 
		['h1', 'p', 'ul', 'ol'],

		semantic_elements: 
		 ['main', 'nav', 'div', 'section', 'header']
	},
        
	   
        
	css: {
			
		'difficulty' => 'medium',

		selectors: ['class', 'id', 'tag'],

		styles: ['color', 'background-color', 'font-size', 'text-align'],

		design: ['boarder', 'margin', 'display', 'padding', 'position']

	},

	ruby: {
		
		'difficulty' => 'hard',

		loops: ['while', 'until', 'for'],

		conditioning: ['if', 'elsif', 'else', 'case statement'],

		methods: ['reverse', 'downcase', 'count', 'insert', 'slice']
	}
}


p languages[:html][:elements][3]
#prints "ol"

p languages[:css][:selectors][1]
#prints "id"

p languages[:ruby]['difficulty']
#prints "hard"

p languages[:html][:semantic_elements]
#prints ['main', 'nav', 'div', 'section', 'header']