.class Lcom/henrythompson/quoda/EditorPanel$25;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->showNewFromTemplateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$edtFilename:Landroid/widget/EditText;

.field final synthetic val$spnEncoding:Landroid/widget/Spinner;

.field final synthetic val$spnLinebreak:Landroid/widget/Spinner;

.field final synthetic val$spnTemplate:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$25;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$25;->val$spnLinebreak:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/henrythompson/quoda/EditorPanel$25;->val$spnEncoding:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/henrythompson/quoda/EditorPanel$25;->val$edtFilename:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/henrythompson/quoda/EditorPanel$25;->val$spnTemplate:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v8, 0x4

    const/4 v8, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/EditorPanel$25;->val$spnLinebreak:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v8, 0x1

    if-nez v3, :cond_1

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v8, 0x7

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/henrythompson/quoda/EditorPanel$25;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/EditorPanel$25;->val$spnEncoding:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    aget-object v0, v1, v6

    const/4 v8, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/EditorPanel$25;->val$edtFilename:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x6

    const/4 v4, 0x0

    const/4 v8, 0x3

    iget-object v6, p0, Lcom/henrythompson/quoda/EditorPanel$25;->val$spnTemplate:Landroid/widget/Spinner;

    const/4 v8, 0x0

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v8, 0x7

    packed-switch v5, :pswitch_data_0

    const/4 v8, 0x2

    :goto_1
    iget-object v6, p0, Lcom/henrythompson/quoda/EditorPanel$25;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const/4 v8, 0x6

    invoke-virtual {v6}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/4 v8, 0x7

    invoke-static {v4, v2, v3, v0, v6}, Lcom/henrythompson/quoda/NewFileCreator;->createNewFile(ILjava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    const/4 v8, 0x5

    nop

    return-void

    const/4 v5, 0x0

    const/4 v8, 0x4

    :cond_1
    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    const/4 v8, 0x1

    const/4 v3, 0x1

    goto :goto_0

    const/4 v5, 0x7

    const/4 v8, 0x6

    :cond_2
    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    const/4 v8, 0x5

    const/4 v3, 0x2

    goto :goto_0

    const/4 v6, 0x1

    const/4 v8, 0x0

    :pswitch_0
    const/4 v4, 0x0

    const/4 v8, 0x5

    goto :goto_1

    const/4 v2, 0x3

    const/4 v8, 0x3

    :pswitch_1
    const/16 v4, 0x8

    const/4 v8, 0x0

    goto :goto_1

    const/4 v0, 0x2

    const/4 v8, 0x4

    :pswitch_2
    const/16 v4, 0x9

    const/4 v8, 0x5

    goto :goto_1

    const/4 v8, 0x1

    const/4 v8, 0x2

    :pswitch_3
    const/16 v4, 0xa

    const/4 v8, 0x3

    goto :goto_1

    const/4 v0, 0x0

    const/4 v8, 0x4

    :pswitch_4
    const/16 v4, 0xb

    const/4 v8, 0x6

    goto :goto_1

    const/4 v3, 0x4

    const/4 v8, 0x0

    :pswitch_5
    const/16 v4, 0xc

    const/4 v8, 0x3

    goto :goto_1

    const/4 v0, 0x1

    const/4 v8, 0x1

    :pswitch_6
    const/4 v4, 0x3

    const/4 v8, 0x3

    goto :goto_1

    const/4 v2, 0x6

    const/4 v8, 0x2

    :pswitch_7
    const/4 v4, 0x1

    const/4 v8, 0x5

    goto :goto_1

    const/4 v1, 0x1

    const/4 v8, 0x5

    :pswitch_8
    const/4 v4, 0x2

    const/4 v8, 0x1

    goto :goto_1

    const/4 v8, 0x2

    const/4 v8, 0x6

    :pswitch_9
    const/4 v4, 0x4

    const/4 v8, 0x5

    goto :goto_1

    const/4 v8, 0x3

    const/4 v8, 0x0

    :pswitch_a
    const/4 v4, 0x5

    const/4 v8, 0x5

    goto :goto_1

    const/4 v1, 0x7

    const/4 v8, 0x2

    :pswitch_b
    const/4 v4, 0x6

    const/4 v8, 0x6

    goto :goto_1

    const/4 v5, 0x3

    const/4 v8, 0x1

    :pswitch_c
    const/4 v4, 0x7

    const/4 v8, 0x3

    goto :goto_1

    const/4 v3, 0x5

    const/4 v8, 0x0

    :pswitch_d
    const/16 v4, 0x13

    const/4 v8, 0x0

    goto :goto_1

    const/4 v7, 0x1

    const/4 v8, 0x1

    :pswitch_e
    const/16 v4, 0x14

    const/4 v8, 0x1

    goto :goto_1

    const/4 v0, 0x7

    const/4 v8, 0x5

    :pswitch_f
    const/16 v4, 0xd

    const/4 v8, 0x2

    goto :goto_1

    const/4 v2, 0x1

    const/4 v8, 0x0

    :pswitch_10
    const/16 v4, 0x10

    const/4 v8, 0x4

    goto :goto_1

    const/4 v0, 0x0

    const/4 v8, 0x3

    :pswitch_11
    const/16 v4, 0x11

    const/4 v8, 0x6

    goto/16 :goto_1

    const/4 v0, 0x3

    const/4 v8, 0x0

    :pswitch_12
    const/16 v4, 0x12

    const/4 v8, 0x4

    goto/16 :goto_1

    const/4 v4, 0x7

    const/4 v8, 0x1

    :pswitch_13
    const/16 v4, 0xe

    const/4 v8, 0x3

    goto/16 :goto_1

    const/4 v2, 0x7

    const/4 v8, 0x7

    :pswitch_14
    const/16 v4, 0x15

    const/4 v8, 0x7

    goto/16 :goto_1

    const/4 v8, 0x1

    const/4 v8, 0x5

    :pswitch_15
    const/16 v4, 0x17

    const/4 v8, 0x1

    goto/16 :goto_1

    const/4 v1, 0x6

    const/4 v8, 0x1

    :pswitch_16
    const/16 v4, 0x16

    const/4 v8, 0x4

    goto/16 :goto_1

    const/4 v2, 0x3

    const/4 v8, 0x6

    :pswitch_17
    const/16 v4, 0xf

    goto/16 :goto_1

    const/4 v3, 0x6

    const/4 v8, 0x4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
