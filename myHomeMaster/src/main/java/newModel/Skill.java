package newModel;

import org.hibernate.validator.constraints.NotEmpty;

public class Skill {
	@NotEmpty
	private Integer skillNumber;
	private String skillName;
	private Integer skillPower;
	private Integer skillType;
	private Integer accuracyRate;
	private Integer killAttackPoint;
	public Integer getSkillNumber() {
		return skillNumber;
	}
	public void setSkillNumber(Integer skillNumber) {
		this.skillNumber = skillNumber;
	}
	public String getSkillName() {
		return skillName;
	}
	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}
	public Integer getSkillPower() {
		return skillPower;
	}
	public void setSkillPower(Integer skillPower) {
		this.skillPower = skillPower;
	}
	public Integer getSkillType() {
		return skillType;
	}
	public void setSkillType(Integer skillType) {
		this.skillType = skillType;
	}
	public Integer getAccuracyRate() {
		return accuracyRate;
	}
	public void setAccuracyRate(Integer accuracyRate) {
		this.accuracyRate = accuracyRate;
	}
	public Integer getKillAttackPoint() {
		return killAttackPoint;
	}
	public void setKillAttackPoint(Integer killAttackPoint) {
		this.killAttackPoint = killAttackPoint;
	}
}
