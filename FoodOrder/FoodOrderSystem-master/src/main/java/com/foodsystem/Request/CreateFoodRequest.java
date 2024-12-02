package com.foodsystem.Request;

import java.util.List;

import com.foodsystem.Model.Category;
import com.foodsystem.Model.IngredientsItem;

import lombok.Data;

@Data
public class CreateFoodRequest {
	
	private String name;
	
	private String description;
	
	private Long price;
	
	private Category category;
	
	private List<String> images;
	
	private Long restaurantId;
	
	private boolean vegetarian;
	
	private boolean seasional;
	
	private List<IngredientsItem>ingredientsItems;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<String> getImages() {
		return images;
	}

	public void setImages(List<String> images) {
		this.images = images;
	}

	public Long getRestaurantId() {
		return restaurantId;
	}

	public void setRestaurantId(Long restaurantId) {
		this.restaurantId = restaurantId;
	}

	public boolean isVegetarian() {
		return vegetarian;
	}

	public void setVegetarian(boolean vegetarian) {
		this.vegetarian = vegetarian;
	}

	public boolean isSeasional() {
		return seasional;
	}

	public void setSeasional(boolean seasional) {
		this.seasional = seasional;
	}

	public List<IngredientsItem> getIngredientsItems() {
		return ingredientsItems;
	}

	public void setIngredientsItems(List<IngredientsItem> ingredientsItems) {
		this.ingredientsItems = ingredientsItems;
	}

	@Override
	public String toString() {
		return "CreateFoodRequest [name=" + name + ", description=" + description + ", price=" + price + ", category="
				+ category + ", images=" + images + ", restaurantId=" + restaurantId + ", vegetarian=" + vegetarian
				+ ", seasional=" + seasional + ", ingredientsItems=" + ingredientsItems + "]";
	}

	public CreateFoodRequest(String name, String description, Long price, Category category, List<String> images,
			Long restaurantId, boolean vegetarian, boolean seasional, List<IngredientsItem> ingredientsItems) {
		super();
		this.name = name;
		this.description = description;
		this.price = price;
		this.category = category;
		this.images = images;
		this.restaurantId = restaurantId;
		this.vegetarian = vegetarian;
		this.seasional = seasional;
		this.ingredientsItems = ingredientsItems;
	}

	public CreateFoodRequest() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
}
