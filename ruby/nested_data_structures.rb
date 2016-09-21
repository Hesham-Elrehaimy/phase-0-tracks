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


p languages[:html][:template][1]
#prints "head"

p languages[:css][:styles][3]
#prints "text-align"

p languages[:ruby]['difficulty']
#prints "hard"

p languages[:ruby][:loops]
#prints ["while", "until", "for"]
