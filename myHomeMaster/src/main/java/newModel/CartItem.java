package newModel;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class CartItem {
	@NotEmpty
	private String userInfoId;
	@NotEmpty
	private Integer pokemonVarietyVarietyNumber;
	private String pokemonName;
	private String imageRoot;
	private Integer price;
	private Integer varietyTotal;
	private MultipartFile image;
	public String getUserInfoId() {
		return userInfoId;
	}
	public void setUserInfoId(String userInfoId) {
		this.userInfoId = userInfoId;
	}
	public Integer getPokemonVarietyVarietyNumber() {
		return pokemonVarietyVarietyNumber;
	}
	public void setPokemonVarietyVarietyNumber(Integer pokemonVarietyVarietyNumber) {
		this.pokemonVarietyVarietyNumber = pokemonVarietyVarietyNumber;
	}
	public String getPokemonName() {
		return pokemonName;
	}
	public void setPokemonName(String pokemonName) {
		this.pokemonName = pokemonName;
	}
	public String getImageRoot() {
		return imageRoot;
	}
	public void setImageRoot(String imageRoot) {
		this.imageRoot = imageRoot;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getVarietyTotal() {
		return varietyTotal;
	}
	public void setVarietyTotal(Integer varietyTotal) {
		this.varietyTotal = varietyTotal;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
}
