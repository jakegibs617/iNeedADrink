Drink.create(
	title: "Mint Julep",
	instructions: "Step One: do something",
	description: "Very delicious",
	season: "Winter",
	image_url: "http://pixelatedcrumb.com/wp-content/uploads/2012/05/mint_julep-1.jpg"
	)

Drink.create(
	title: "Stiff Bourbon",
	instructions: "Step One: shots",
	description: "More delicious",
	season: "Spring",
	image_url: "http://pixelatedcrumb.com/wp-content/uploads/2012/05/mint_julep-1.jpg"
	)


	collection = [
	    {
	      title: "Old Fashioned"
	    },
	    {
	      title: "Martinez"
	    },
	    {
	      title: "Martini"
	    },
	    {
	      title: "Manhattan"
	    },
	    {
	      title: "Brooklyn"
	    },
	    {
	      title: "Daiquiri"
	    },
	    {
	      title: "Margarita"
	    },
	    {
	      title: "Sidecar"
	    },
	    {
	      title: "French 75"
	    },
	    {
	      title: "Bloody Mary"
	    },
	    {
	      title: "Irish Coffee"
	    },
	    {
	      title: "Jack Rose"
	    },
	    {
	      title: "Negroni"
	    },
	    {
	      title: "Boulevardier"
	    },
	    {
	      title: "Sazerac"
	    },
	    {
	      title: "Vieux Carré"
	    },
	    {
	      title: "Ramos Gin Fizz"
	    },
	    {
	      title: "Mint Julep"
	    },
	    {
	      title: "Whiskey Sour"
	    },
	    {
	      title: "Mai Tai"
	    },
	    {
	      title: "Planter's Punch"
	    },
	    {
	      title: "Cosmopolitan"
	    },
	    {
	      title: "Pisco Sour"
	    },
	    {
	      title: "Tom Collins"
	    },
	    {
	      title: "Last Word"
	    }
	  ]

		collection.each do |x|
		  Drink.create( x )
		end
