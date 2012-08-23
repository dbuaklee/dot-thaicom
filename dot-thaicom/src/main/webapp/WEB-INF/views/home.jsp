<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<script type="text/javascript">

var Note = Backbone.Model.extend({
	
});

var NoteList = Backbone.Collection.extend({
	model: Note,
	url: '/dot-thaicom/notes'
});

var DocumentRow = Backbone.View.extend({
	el: '#testRow',
	collection: null,
	render: function() {
		//this.collection.fetch();
		var template = Handlebars.compile( $("#entry-template").html() );
		return this.$el.html( template(this.collection.toJSON()) );

	}
});

var view;

$(document).ready(function () {
	view = new DocumentRow();
	view.collection = new NoteList();
	view.collection.fetch();

	// now we can render
	view.render();

});

</script>


<script id="entry-template" type="text/x-handlebars-template">
<table>
	{{#each this}}
		<tr>
			<td>{{id}}</td>
			<td>{{title}}</td>
		</tr>
	{{/each}}
</table>
</script>

<div class="row" id="testRow"></div>

<div class="row">
        <div class="span4">
          <h2>Heading</h2>
           <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn" href="#" onclick="view.render()">View details &raquo;</a></p>
        </div>
        <div class="span4">
          <h2>Heading</h2>
           <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
       </div>
        <div class="span4">
          <h2>Heading</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
        </div>
</div>