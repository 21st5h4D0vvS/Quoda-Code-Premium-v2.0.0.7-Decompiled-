.class Lcom/henrythompson/quoda/settings/KeybindingPreference;
.super Landroid/preference/DialogPreference;


# instance fields
.field private isUpdatingText:Z

.field private mAltCheckbox:Landroid/widget/CheckBox;

.field private mAltPressed:Z

.field private mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

.field private mCtrlCheckbox:Landroid/widget/CheckBox;

.field private mCtrlPressed:Z

.field private mEditText:Landroid/widget/EditText;

.field private mKey:Ljava/lang/String;

.field private mNewAltValue:Z

.field private mNewCtrlValue:Z

.field private mNewEnabledValue:Z

.field private mNewKeyValue:C

.field private mNewShiftValue:Z

.field private mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

.field private mShiftCheckbox:Landroid/widget/CheckBox;

.field private mShiftPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x4
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewCtrlValue:Z

    return v0

    const/4 v1, 0x4
.end method

.method static synthetic access$002(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewCtrlValue:Z

    return p1

    const/4 v0, 0x2
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mCtrlPressed:Z

    return v0

    const/4 v1, 0x7
.end method

.method static synthetic access$1000(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Landroid/widget/CheckBox;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mShiftCheckbox:Landroid/widget/CheckBox;

    return-object v0

    const/4 v1, 0x0
.end method

.method static synthetic access$102(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mCtrlPressed:Z

    return p1

    const/4 v0, 0x2
.end method

.method static synthetic access$1100(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Landroid/widget/CheckBox;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mAltCheckbox:Landroid/widget/CheckBox;

    return-object v0

    const/4 v1, 0x2
.end method

.method static synthetic access$1200(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Lcom/henrythompson/quoda/QuodaPreferences;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    return-object v0

    const/4 v1, 0x6
.end method

.method static synthetic access$1300(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Landroid/widget/EditText;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mEditText:Landroid/widget/EditText;

    return-object v0

    const/4 v0, 0x7
.end method

.method static synthetic access$1400(Lcom/henrythompson/quoda/settings/KeybindingPreference;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->performSaveKeybinding()V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x7

    iget-boolean v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewEnabledValue:Z

    return v0

    const/4 v0, 0x2
.end method

.method static synthetic access$202(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewEnabledValue:Z

    return p1

    const/4 v0, 0x0
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    iget-boolean v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewShiftValue:Z

    return v0

    const/4 v1, 0x6
.end method

.method static synthetic access$302(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewShiftValue:Z

    return p1

    const/4 v0, 0x4
.end method

.method static synthetic access$400(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewAltValue:Z

    return v0

    const/4 v1, 0x2
.end method

.method static synthetic access$402(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x6

    iput-boolean p1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewAltValue:Z

    return p1

    const/4 v0, 0x6
.end method

.method static synthetic access$500(Lcom/henrythompson/quoda/settings/KeybindingPreference;)C
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    iget-char v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewKeyValue:C

    return v0

    const/4 v0, 0x4
.end method

.method static synthetic access$502(Lcom/henrythompson/quoda/settings/KeybindingPreference;C)C
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x5

    iput-char p1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewKeyValue:C

    return p1

    const/4 v0, 0x2
.end method

.method static synthetic access$600(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    iget-boolean v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mAltPressed:Z

    return v0

    const/4 v0, 0x3
.end method

.method static synthetic access$602(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mAltPressed:Z

    return p1

    const/4 v0, 0x4
.end method

.method static synthetic access$700(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mShiftPressed:Z

    return v0

    const/4 v1, 0x5
.end method

.method static synthetic access$702(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mShiftPressed:Z

    return p1

    const/4 v0, 0x5
.end method

.method static synthetic access$800(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->isUpdatingText:Z

    return v0

    const/4 v0, 0x3
.end method

.method static synthetic access$900(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Landroid/widget/CheckBox;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mCtrlCheckbox:Landroid/widget/CheckBox;

    return-object v0

    const/4 v0, 0x1
.end method

.method private performSaveKeybinding()V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-boolean v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewEnabledValue:Z

    iput-boolean v1, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->enabled:Z

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-boolean v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewCtrlValue:Z

    iput-boolean v1, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->ctrl:Z

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-boolean v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewShiftValue:Z

    iput-boolean v1, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->shift:Z

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-boolean v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewAltValue:Z

    iput-boolean v1, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->alt:Z

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-char v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewKeyValue:C

    iput-char v1, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->key:C

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/QuodaPreferences;->saveKeybinding(Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;)V

    const/4 v2, 0x2

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x7

    const/16 v5, 0x6d

    const/4 v1, 0x0

    const/4 v6, 0x3

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    const/4 v6, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mKey:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/QuodaPreferences;->getKeybinding(Ljava/lang/String;)Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    const/4 v6, 0x6

    const v0, 0x7f080072

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mEditText:Landroid/widget/EditText;

    const/4 v6, 0x0

    const v0, 0x7f080070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mCtrlCheckbox:Landroid/widget/CheckBox;

    const/4 v6, 0x5

    const v0, 0x7f080071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mShiftCheckbox:Landroid/widget/CheckBox;

    const/4 v6, 0x7

    const v0, 0x7f08006f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mAltCheckbox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mCtrlCheckbox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/henrythompson/quoda/settings/KeybindingPreference$1;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/settings/KeybindingPreference$1;-><init>(Lcom/henrythompson/quoda/settings/KeybindingPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mAltCheckbox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/henrythompson/quoda/settings/KeybindingPreference$2;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/settings/KeybindingPreference$2;-><init>(Lcom/henrythompson/quoda/settings/KeybindingPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mShiftCheckbox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/henrythompson/quoda/settings/KeybindingPreference$3;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/settings/KeybindingPreference$3;-><init>(Lcom/henrythompson/quoda/settings/KeybindingPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;-><init>(Lcom/henrythompson/quoda/settings/KeybindingPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v6, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;-><init>(Lcom/henrythompson/quoda/settings/KeybindingPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    if-eqz v0, :cond_2

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-boolean v0, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->enabled:Z

    if-nez v0, :cond_0

    const/4 v6, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iput-boolean v1, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->ctrl:Z

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iput-boolean v1, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->alt:Z

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iput-boolean v1, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->shift:Z

    const/4 v6, 0x2

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-char v0, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->key:C

    if-nez v0, :cond_1

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iput-char v5, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->key:C

    const/4 v6, 0x1

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-char v0, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->key:C

    iput-char v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewKeyValue:C

    const/4 v6, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-boolean v0, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->ctrl:Z

    iput-boolean v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewCtrlValue:Z

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-boolean v0, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->shift:Z

    iput-boolean v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewShiftValue:Z

    const/4 v6, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-boolean v0, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->alt:Z

    iput-boolean v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewAltValue:Z

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-boolean v0, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->enabled:Z

    iput-boolean v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewEnabledValue:Z

    const/4 v6, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-boolean v1, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->enabled:Z

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-boolean v2, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->ctrl:Z

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-boolean v3, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->shift:Z

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-boolean v4, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->alt:Z

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-char v5, v0, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->key:C

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->setValue(ZZZZC)V

    const/4 v6, 0x1

    :goto_0
    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/henrythompson/quoda/settings/KeybindingPreference$6;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/settings/KeybindingPreference$6;-><init>(Lcom/henrythompson/quoda/settings/KeybindingPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    const/4 v6, 0x6

    nop

    return-void

    const/4 v6, 0x4

    :cond_2
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->setValue(ZZZZC)V

    goto :goto_0

    const/4 v3, 0x6
.end method

.method protected onDialogClosed(Z)V
    .locals 8

    const/4 v7, 0x6

    const/4 v7, 0x7

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    const/4 v7, 0x7

    if-eqz p1, :cond_1

    const/4 v7, 0x1

    iget-boolean v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewShiftValue:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewCtrlValue:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewAltValue:Z

    if-nez v2, :cond_0

    const/4 v7, 0x4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewEnabledValue:Z

    const/4 v7, 0x2

    :cond_0
    iget-boolean v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewEnabledValue:Z

    if-eqz v2, :cond_1

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    iget-char v3, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewKeyValue:C

    iget-boolean v4, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewCtrlValue:Z

    iget-boolean v5, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewShiftValue:Z

    iget-boolean v6, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewAltValue:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/henrythompson/quoda/QuodaPreferences;->getActionForKeybinding(CZZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mBinding:Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;

    iget-object v2, v2, Lcom/henrythompson/quoda/QuodaPreferences$Keybinding;->action:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v7, 0x1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x6

    const-string v2, "Warning"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This keyboard shortcut is currently assigned to the action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Continuing will reassign this shortcut. Continue?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x1

    const-string v2, "Continue"

    new-instance v3, Lcom/henrythompson/quoda/settings/KeybindingPreference$7;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/settings/KeybindingPreference$7;-><init>(Lcom/henrythompson/quoda/settings/KeybindingPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x7

    const-string v2, "Cancel"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v7, 0x0

    :cond_1
    :goto_0
    nop

    return-void

    const/4 v0, 0x4

    const/4 v7, 0x2

    :cond_2
    invoke-direct {p0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->performSaveKeybinding()V

    goto :goto_0

    const/4 v2, 0x3
.end method

.method public setValue(ZZZZC)V
    .locals 8

    const/4 v7, 0x3

    const v2, 0x7f0d018a

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    if-nez p5, :cond_1

    const/4 v7, 0x4

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v6, 0x4

    const/4 v7, 0x4

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    const/4 v7, 0x2

    iput-boolean v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewEnabledValue:Z

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->setValue(ZZZZC)V

    goto :goto_0

    const/4 v2, 0x5

    const/4 v7, 0x6

    :cond_2
    if-eqz p1, :cond_4

    const/4 v7, 0x7

    iput-boolean v3, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewEnabledValue:Z

    const/4 v7, 0x2

    :goto_1
    if-eqz p1, :cond_c

    const/4 v7, 0x3

    if-nez p2, :cond_3

    if-nez p4, :cond_3

    if-eqz p3, :cond_b

    if-nez p2, :cond_3

    if-eqz p4, :cond_b

    const/4 v7, 0x1

    :cond_3
    if-eqz p2, :cond_5

    const-string v0, "Ctrl + "

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    if-eqz p3, :cond_6

    const-string v0, "Shift + "

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x6

    if-eqz p4, :cond_7

    const-string v0, "Alt + "

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x6

    const/16 v0, 0x20

    if-ne p5, v0, :cond_8

    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d0231

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    :goto_5
    iput-boolean v3, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->isUpdatingText:Z

    const/4 v7, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x5

    iput-boolean v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->isUpdatingText:Z

    const/4 v7, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mCtrlCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mShiftCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mAltCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    const/4 v7, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mCtrlCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v7, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mShiftCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mAltCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    const/4 v3, 0x3

    const/4 v7, 0x6

    :cond_4
    iput-boolean v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference;->mNewEnabledValue:Z

    goto :goto_1

    const/4 v4, 0x1

    const/4 v7, 0x1

    :cond_5
    const-string v0, ""

    goto :goto_2

    const/4 v5, 0x6

    const/4 v7, 0x1

    :cond_6
    const-string v0, ""

    goto :goto_3

    const/4 v2, 0x4

    const/4 v7, 0x6

    :cond_7
    const-string v0, ""

    goto :goto_4

    const/4 v1, 0x2

    const/4 v7, 0x1

    :cond_8
    const/16 v0, 0x9

    if-ne p5, v0, :cond_9

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d0235

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    const/4 v5, 0x1

    const/4 v7, 0x4

    :cond_9
    if-gez p5, :cond_a

    const/4 v7, 0x3

    mul-int/lit8 v0, p5, -0x1

    int-to-char p5, v0

    goto :goto_5

    const/4 v3, 0x0

    const/4 v7, 0x2

    :cond_a
    invoke-static {p5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    const/4 v4, 0x3

    const/4 v7, 0x5

    :cond_b
    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    const/4 v1, 0x3

    const/4 v7, 0x2

    :cond_c
    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    const/4 v0, 0x3
.end method
