class RecipeModel {
  String? id;
  String? name;
  List<String>? tags;
  String? description;
  int? prepareTime;
  int? cookTime;
  List<Ingredients>? ingredients;
  List<String>? steps;
  int? servings;
  List<ServingSizes>? servingSizes;
  Nutrients? nutrients;
  String? image;

  RecipeModel(
      {this.id,
        this.name,
        this.tags,
        this.description,
        this.prepareTime,
        this.cookTime,
        this.ingredients,
        this.steps,
        this.servings,
        this.servingSizes,
        this.nutrients,
        this.image});

  RecipeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    tags = json['tags'].cast<String>();
    description = json['description'];
    prepareTime = json['prepareTime'];
    cookTime = json['cookTime'];
    if (json['ingredients'] != null) {
      ingredients = <Ingredients>[];
      json['ingredients'].forEach((v) {
        ingredients!.add(new Ingredients.fromJson(v));
      });
    }
    steps = json['steps'].cast<String>();
    servings = json['servings'];
    if (json['servingSizes'] != null) {
      servingSizes = <ServingSizes>[];
      json['servingSizes'].forEach((v) {
        servingSizes!.add(new ServingSizes.fromJson(v));
      });
    }
    nutrients = json['nutrients'] != null
        ? new Nutrients.fromJson(json['nutrients'])
        : null;
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['tags'] = this.tags;
    data['description'] = this.description;
    data['prepareTime'] = this.prepareTime;
    data['cookTime'] = this.cookTime;
    if (this.ingredients != null) {
      data['ingredients'] = this.ingredients!.map((v) => v.toJson()).toList();
    }
    data['steps'] = this.steps;
    data['servings'] = this.servings;
    if (this.servingSizes != null) {
      data['servingSizes'] = this.servingSizes!.map((v) => v.toJson()).toList();
    }
    if (this.nutrients != null) {
      data['nutrients'] = this.nutrients!.toJson();
    }
    data['image'] = this.image;
    return data;
  }
}

class Ingredients {
  String? name;
  ServingSize? servingSize;

  Ingredients({this.name, this.servingSize});

  Ingredients.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    servingSize = json['servingSize'] != null
        ? new ServingSize.fromJson(json['servingSize'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.servingSize != null) {
      data['servingSize'] = this.servingSize!.toJson();
    }
    return data;
  }
}

class ServingSize {
  String? units;
  String? desc;
  double? qty;
  int? grams;
  double? scale;

  ServingSize({this.units, this.desc, this.qty, this.grams, this.scale});

  ServingSize.fromJson(Map<String, dynamic> json) {
    units = json['units'];
    desc = json['desc'];
    qty = json['qty'];
    grams = json['grams'];
    scale = json['scale'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['units'] = this.units;
    data['desc'] = this.desc;
    data['qty'] = this.qty;
    data['grams'] = this.grams;
    data['scale'] = this.scale;
    return data;
  }
}

class ServingSizes {
  int? scale;
  int? qty;
  int? grams;
  String? units;
  int? originalWeight;
  String? originalWeightUnits;

  ServingSizes(
      {this.scale,
        this.qty,
        this.grams,
        this.units,
        this.originalWeight,
        this.originalWeightUnits});

  ServingSizes.fromJson(Map<String, dynamic> json) {
    scale = json['scale'];
    qty = json['qty'];
    grams = json['grams'];
    units = json['units'];
    originalWeight = json['originalWeight'];
    originalWeightUnits = json['originalWeightUnits'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['scale'] = this.scale;
    data['qty'] = this.qty;
    data['grams'] = this.grams;
    data['units'] = this.units;
    data['originalWeight'] = this.originalWeight;
    data['originalWeightUnits'] = this.originalWeightUnits;
    return data;
  }
}

class Nutrients {
  double? caloriesKCal;
  double? caloriesKJ;
  double? totalCarbs;
  double? diabetesCarbsADA;
  double? netCarbs;
  double? diabetesCarbs;
  double? fiber;
  double? starch;
  double? sugar;
  int? addedSugar;
  double? sugarAlcohols;
  double? protein;
  double? fat;
  double? transFat;
  double? monousatFat;
  double? polyunsatFat;
  double? omega3Fat;
  double? omega6Fat;
  double? saturatedFat;
  double? cholesterol;
  double? vitaminA;
  double? vitaminC;
  double? vitaminD;
  double? vitaminE;
  double? vitaminK;
  double? vitaminB1;
  double? vitaminB2;
  double? vitaminB3;
  double? vitaminB5;
  double? vitaminB6;
  double? vitaminB12;
  double? potassium;
  double? magnesium;
  double? calcium;
  double? iron;
  double? zinc;
  double? copper;
  double? phosphorus;
  double? sodium;
  double? selenium;
  double? folate;
  double? choline;
  double? alcohol;
  int? caffeine;
  int? gluten;
  double? manganese;
  double? conjugatedLinoleicAcid;
  double? phyticAcid;
  int? xylitol;
  int? isomalt;
  int? sorbitol;
  int? maltitol;
  int? lactitol;
  int? erythritol;
  int? pinitol;
  double? inositol;
  int? mannitol;

  Nutrients(
      {this.caloriesKCal,
        this.caloriesKJ,
        this.totalCarbs,
        this.diabetesCarbsADA,
        this.netCarbs,
        this.diabetesCarbs,
        this.fiber,
        this.starch,
        this.sugar,
        this.addedSugar,
        this.sugarAlcohols,
        this.protein,
        this.fat,
        this.transFat,
        this.monousatFat,
        this.polyunsatFat,
        this.omega3Fat,
        this.omega6Fat,
        this.saturatedFat,
        this.cholesterol,
        this.vitaminA,
        this.vitaminC,
        this.vitaminD,
        this.vitaminE,
        this.vitaminK,
        this.vitaminB1,
        this.vitaminB2,
        this.vitaminB3,
        this.vitaminB5,
        this.vitaminB6,
        this.vitaminB12,
        this.potassium,
        this.magnesium,
        this.calcium,
        this.iron,
        this.zinc,
        this.copper,
        this.phosphorus,
        this.sodium,
        this.selenium,
        this.folate,
        this.choline,
        this.alcohol,
        this.caffeine,
        this.gluten,
        this.manganese,
        this.conjugatedLinoleicAcid,
        this.phyticAcid,
        this.xylitol,
        this.isomalt,
        this.sorbitol,
        this.maltitol,
        this.lactitol,
        this.erythritol,
        this.pinitol,
        this.inositol,
        this.mannitol});

  Nutrients.fromJson(Map<String, dynamic> json) {
    caloriesKCal = json['caloriesKCal'];
    caloriesKJ = json['caloriesKJ'];
    totalCarbs = json['totalCarbs'];
    diabetesCarbsADA = json['diabetesCarbsADA'];
    netCarbs = json['netCarbs'];
    diabetesCarbs = json['diabetesCarbs'];
    fiber = json['fiber'];
    starch = json['starch'];
    sugar = json['sugar'];
    addedSugar = json['addedSugar'];
    sugarAlcohols = json['sugarAlcohols'];
    protein = json['protein'];
    fat = json['fat'];
    transFat = json['transFat'];
    monousatFat = json['monousatFat'];
    polyunsatFat = json['polyunsatFat'];
    omega3Fat = json['omega3Fat'];
    omega6Fat = json['omega6Fat'];
    saturatedFat = json['saturatedFat'];
    cholesterol = json['cholesterol'];
    vitaminA = json['vitaminA'];
    vitaminC = json['vitaminC'];
    vitaminD = json['vitaminD'];
    vitaminE = json['vitaminE'];
    vitaminK = json['vitaminK'];
    vitaminB1 = json['vitaminB1'];
    vitaminB2 = json['vitaminB2'];
    vitaminB3 = json['vitaminB3'];
    vitaminB5 = json['vitaminB5'];
    vitaminB6 = json['vitaminB6'];
    vitaminB12 = json['vitaminB12'];
    potassium = json['potassium'];
    magnesium = json['magnesium'];
    calcium = json['calcium'];
    iron = json['iron'];
    zinc = json['zinc'];
    copper = json['copper'];
    phosphorus = json['phosphorus'];
    sodium = json['sodium'];
    selenium = json['selenium'];
    folate = json['folate'];
    choline = json['choline'];
    alcohol = json['alcohol'];
    caffeine = json['caffeine'];
    gluten = json['gluten'];
    manganese = json['manganese'];
    conjugatedLinoleicAcid = json['conjugatedLinoleicAcid'];
    phyticAcid = json['phyticAcid'];
    xylitol = json['xylitol'];
    isomalt = json['isomalt'];
    sorbitol = json['sorbitol'];
    maltitol = json['maltitol'];
    lactitol = json['lactitol'];
    erythritol = json['erythritol'];
    pinitol = json['pinitol'];
    inositol = json['inositol'];
    mannitol = json['mannitol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['caloriesKCal'] = this.caloriesKCal;
    data['caloriesKJ'] = this.caloriesKJ;
    data['totalCarbs'] = this.totalCarbs;
    data['diabetesCarbsADA'] = this.diabetesCarbsADA;
    data['netCarbs'] = this.netCarbs;
    data['diabetesCarbs'] = this.diabetesCarbs;
    data['fiber'] = this.fiber;
    data['starch'] = this.starch;
    data['sugar'] = this.sugar;
    data['addedSugar'] = this.addedSugar;
    data['sugarAlcohols'] = this.sugarAlcohols;
    data['protein'] = this.protein;
    data['fat'] = this.fat;
    data['transFat'] = this.transFat;
    data['monousatFat'] = this.monousatFat;
    data['polyunsatFat'] = this.polyunsatFat;
    data['omega3Fat'] = this.omega3Fat;
    data['omega6Fat'] = this.omega6Fat;
    data['saturatedFat'] = this.saturatedFat;
    data['cholesterol'] = this.cholesterol;
    data['vitaminA'] = this.vitaminA;
    data['vitaminC'] = this.vitaminC;
    data['vitaminD'] = this.vitaminD;
    data['vitaminE'] = this.vitaminE;
    data['vitaminK'] = this.vitaminK;
    data['vitaminB1'] = this.vitaminB1;
    data['vitaminB2'] = this.vitaminB2;
    data['vitaminB3'] = this.vitaminB3;
    data['vitaminB5'] = this.vitaminB5;
    data['vitaminB6'] = this.vitaminB6;
    data['vitaminB12'] = this.vitaminB12;
    data['potassium'] = this.potassium;
    data['magnesium'] = this.magnesium;
    data['calcium'] = this.calcium;
    data['iron'] = this.iron;
    data['zinc'] = this.zinc;
    data['copper'] = this.copper;
    data['phosphorus'] = this.phosphorus;
    data['sodium'] = this.sodium;
    data['selenium'] = this.selenium;
    data['folate'] = this.folate;
    data['choline'] = this.choline;
    data['alcohol'] = this.alcohol;
    data['caffeine'] = this.caffeine;
    data['gluten'] = this.gluten;
    data['manganese'] = this.manganese;
    data['conjugatedLinoleicAcid'] = this.conjugatedLinoleicAcid;
    data['phyticAcid'] = this.phyticAcid;
    data['xylitol'] = this.xylitol;
    data['isomalt'] = this.isomalt;
    data['sorbitol'] = this.sorbitol;
    data['maltitol'] = this.maltitol;
    data['lactitol'] = this.lactitol;
    data['erythritol'] = this.erythritol;
    data['pinitol'] = this.pinitol;
    data['inositol'] = this.inositol;
    data['mannitol'] = this.mannitol;
    return data;
  }
}
