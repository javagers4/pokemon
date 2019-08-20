package newModel;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class PokemonEntity {
	@NotEmpty
	private Integer entityNumber;
	@NotEmpty
	private String userInfoId;
	@NotEmpty
	private Integer pokemonVarietyVarietyNumber;
	private String pokemonName;
	private String typeOne;
	private String typeTwo;
	private Integer EvolutionLevel;
	private Integer EntityPhysicalAttack;
	private Integer EntityPhysicalDefense;
	private Integer EntitySpeed;
	private Integer EntityHealth;
	private Integer EntityTotal;
	private Integer NormalSkill;
	private Integer TypeSkill;
	private String ImageRoot;
	private String Character;
	private MultipartFile image;
	public Integer getEntityNumber() {
		return entityNumber;
	}
	public void setEntityNumber(Integer entityNumber) {
		this.entityNumber = entityNumber;
	}
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
	public String getTypeOne() {
		return typeOne;
	}
	public void setTypeOne(String typeOne) {
		this.typeOne = typeOne;
	}
	public String getTypeTwo() {
		return typeTwo;
	}
	public void setTypeTwo(String typeTwo) {
		this.typeTwo = typeTwo;
	}
	public Integer getEvolutionLevel() {
		return EvolutionLevel;
	}
	public void setEvolutionLevel(Integer evolutionLevel) {
		EvolutionLevel = evolutionLevel;
	}
	public Integer getEntityPhysicalAttack() {
		return EntityPhysicalAttack;
	}
	public void setEntityPhysicalAttack(Integer entityPhysicalAttack) {
		EntityPhysicalAttack = entityPhysicalAttack;
	}
	public Integer getEntityPhysicalDefense() {
		return EntityPhysicalDefense;
	}
	public void setEntityPhysicalDefense(Integer entityPhysicalDefense) {
		EntityPhysicalDefense = entityPhysicalDefense;
	}
	public Integer getEntitySpeed() {
		return EntitySpeed;
	}
	public void setEntitySpeed(Integer entitySpeed) {
		EntitySpeed = entitySpeed;
	}
	public Integer getEntityHealth() {
		return EntityHealth;
	}
	public void setEntityHealth(Integer entityHealth) {
		EntityHealth = entityHealth;
	}
	public Integer getEntityTotal() {
		return EntityTotal;
	}
	public void setEntityTotal(Integer entityTotal) {
		EntityTotal = entityTotal;
	}
	public Integer getNormalSkill() {
		return NormalSkill;
	}
	public void setNormalSkill(Integer normalSkill) {
		NormalSkill = normalSkill;
	}
	public Integer getTypeSkill() {
		return TypeSkill;
	}
	public void setTypeSkill(Integer typeSkill) {
		TypeSkill = typeSkill;
	}
	public String getImageRoot() {
		return ImageRoot;
	}
	public void setImageRoot(String imageRoot) {
		ImageRoot = imageRoot;
	}
	public String getCharacter() {
		return Character;
	}
	public void setCharacter(String character) {
		Character = character;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
}
