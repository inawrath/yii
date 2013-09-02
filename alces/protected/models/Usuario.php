<?php

/**
 * This is the model class for table "Usuario".
 *
 * The followings are the available columns in table 'Usuario':
 * @property integer $id
 * @property string $usuario
 * @property string $pass
 * @property string $email
 * @property string $telefono
 * @property string $direccion
 */
class Usuario extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'Usuario';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('usuario, pass, email, telefono, direccion', 'required'),
			array('usuario, pass, email', 'length', 'max'=>128),
			array('telefono', 'length', 'max'=>50),
			array('direccion', 'length', 'max'=>200),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, usuario, pass, email, telefono, direccion', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'Id',
			'usuario' => 'Usuario',
			'pass' => 'Pass',
			'email' => 'Email',
			'telefono' => 'Telefono',
			'direccion' => 'Direccion',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);

		$criteria->compare('usuario',$this->usuario,true);

		$criteria->compare('pass',$this->pass,true);

		$criteria->compare('email',$this->email,true);

		$criteria->compare('telefono',$this->telefono,true);

		$criteria->compare('direccion',$this->direccion,true);

		return new CActiveDataProvider('Usuario', array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * @return Usuario the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}