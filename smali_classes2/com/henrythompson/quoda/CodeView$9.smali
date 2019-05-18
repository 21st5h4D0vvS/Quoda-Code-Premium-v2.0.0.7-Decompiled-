.class Lcom/henrythompson/quoda/CodeView$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/CodeView;->findBraceMatches()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/CodeView;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/CodeView;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public run()V
    .locals 15

    :try_start_0
    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v11

    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v10

    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v7

    if-ne v11, v10, :cond_2b

    if-ltz v11, :cond_2b

    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v13

    if-eqz v13, :cond_2b

    if-gt v11, v7, :cond_2b

    const/4 v8, -0x1

    if-ne v11, v7, :cond_5

    const/16 v0, 0x20

    :goto_0
    if-lez v11, :cond_6

    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v13

    add-int/lit8 v14, v11, -0x1

    invoke-interface {v13, v14}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    :goto_1
    const/16 v12, 0x20

    const/16 v4, 0x20

    const/16 v13, 0x7b

    if-eq v0, v13, :cond_0

    const/16 v13, 0x5b

    if-eq v0, v13, :cond_0

    const/16 v13, 0x3c

    if-eq v0, v13, :cond_0

    const/16 v13, 0x28

    if-eq v0, v13, :cond_0

    const/16 v13, 0x7b

    if-eq v1, v13, :cond_0

    const/16 v13, 0x5b

    if-eq v1, v13, :cond_0

    const/16 v13, 0x3c

    if-eq v1, v13, :cond_0

    const/16 v13, 0x28

    if-ne v1, v13, :cond_17

    :cond_0
    move v12, v0

    const/16 v13, 0x7b

    if-ne v12, v13, :cond_7

    const/16 v4, 0x7d

    :cond_1
    :goto_2
    const/16 v13, 0x20

    if-ne v4, v13, :cond_2

    if-lez v11, :cond_2

    move v12, v1

    add-int/lit8 v11, v11, -0x1

    const/16 v13, 0x7b

    if-ne v12, v13, :cond_a

    const/16 v4, 0x7d

    :cond_2
    :goto_3
    const/16 v13, 0x20

    if-eq v4, v13, :cond_4

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x20

    move v5, v11

    :goto_4
    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    if-ge v5, v13, :cond_4

    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-nez v6, :cond_3

    if-ne v0, v12, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    if-nez v6, :cond_d

    if-ne v0, v4, :cond_d

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_d

    move v8, v5

    :cond_4
    :goto_5
    if-ltz v8, :cond_2a

    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v13, v11}, Lcom/henrythompson/quoda/CodeView;->access$1602(Lcom/henrythompson/quoda/CodeView;I)I

    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v13, v8}, Lcom/henrythompson/quoda/CodeView;->access$1702(Lcom/henrythompson/quoda/CodeView;I)I

    :goto_6
    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    new-instance v14, Lcom/henrythompson/quoda/CodeView$9$1;

    invoke-direct {v14, p0}, Lcom/henrythompson/quoda/CodeView$9$1;-><init>(Lcom/henrythompson/quoda/CodeView$9;)V

    invoke-virtual {v13, v14}, Lcom/henrythompson/quoda/CodeView;->post(Ljava/lang/Runnable;)Z

    :goto_7
    nop

    return-void

    const/4 v8, 0x5

    :cond_5
    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    goto/16 :goto_0

    const/4 v6, 0x7

    :cond_6
    const/16 v1, 0x20

    goto/16 :goto_1

    const/4 v5, 0x5

    :cond_7
    const/16 v13, 0x5b

    if-ne v12, v13, :cond_8

    const/16 v4, 0x5d

    goto :goto_2

    const/4 v10, 0x7

    :cond_8
    const/16 v13, 0x3c

    if-ne v12, v13, :cond_9

    const/16 v4, 0x3e

    goto :goto_2

    const/4 v6, 0x4

    :cond_9
    const/16 v13, 0x28

    if-ne v12, v13, :cond_1

    const/16 v4, 0x29

    goto :goto_2

    const/4 v7, 0x3

    :cond_a
    const/16 v13, 0x5b

    if-ne v12, v13, :cond_b

    const/16 v4, 0x5d

    goto :goto_3

    const/4 v9, 0x7

    :cond_b
    const/16 v13, 0x3c

    if-ne v12, v13, :cond_c

    const/16 v4, 0x3e

    goto :goto_3

    const/4 v14, 0x2

    :cond_c
    const/16 v13, 0x28

    if-ne v12, v13, :cond_2

    const/16 v4, 0x29

    goto/16 :goto_3

    const/4 v10, 0x0

    :cond_d
    const/16 v13, 0x20

    if-eq v9, v13, :cond_e

    const/16 v13, 0x22

    if-ne v9, v13, :cond_f

    :cond_e
    const/16 v13, 0x22

    if-ne v0, v13, :cond_f

    if-nez v6, :cond_13

    const/4 v6, 0x1

    :goto_8
    if-eqz v6, :cond_14

    move v9, v0

    :cond_f
    :goto_9
    const/16 v13, 0x20

    if-eq v9, v13, :cond_10

    const/16 v13, 0x27

    if-ne v9, v13, :cond_11

    :cond_10
    const/16 v13, 0x27

    if-ne v0, v13, :cond_11

    if-nez v6, :cond_15

    const/4 v6, 0x1

    :goto_a
    if-eqz v6, :cond_16

    move v9, v0

    :cond_11
    :goto_b
    if-eqz v6, :cond_12

    const/16 v13, 0x5c

    if-ne v0, v13, :cond_12

    add-int/lit8 v5, v5, 0x1

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    const/4 v12, 0x0

    :cond_13
    const/4 v6, 0x0

    goto :goto_8

    const/4 v3, 0x3

    :cond_14
    const/16 v9, 0x20

    goto :goto_9

    const/4 v6, 0x7

    :cond_15
    const/4 v6, 0x0

    goto :goto_a

    const/4 v10, 0x4

    :cond_16
    const/16 v9, 0x20

    goto :goto_b

    const/4 v5, 0x5

    :cond_17
    move v4, v0

    const/16 v13, 0x7d

    if-ne v4, v13, :cond_1b

    const/16 v12, 0x7b

    :cond_18
    :goto_c
    const/16 v13, 0x20

    if-ne v12, v13, :cond_19

    if-lez v11, :cond_19

    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v13

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v13, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v13, 0x7d

    if-ne v4, v13, :cond_1e

    const/16 v12, 0x7b

    :cond_19
    :goto_d
    const/16 v13, 0x20

    if-eq v12, v13, :cond_4

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x20

    move v5, v11

    :goto_e
    if-ltz v5, :cond_4

    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-nez v6, :cond_1a

    if-ne v0, v4, :cond_1a

    add-int/lit8 v2, v2, 0x1

    :cond_1a
    if-nez v6, :cond_21

    if-ne v0, v12, :cond_21

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_21

    move v8, v5

    goto/16 :goto_5

    const/4 v10, 0x7

    :cond_1b
    const/16 v13, 0x5d

    if-ne v4, v13, :cond_1c

    const/16 v12, 0x5b

    goto :goto_c

    const/4 v12, 0x1

    :cond_1c
    const/16 v13, 0x3e

    if-ne v4, v13, :cond_1d

    const/16 v12, 0x3c

    goto :goto_c

    const/4 v2, 0x4

    :cond_1d
    const/16 v13, 0x29

    if-ne v4, v13, :cond_18

    const/16 v12, 0x28

    goto :goto_c

    const/4 v7, 0x1

    :cond_1e
    const/16 v13, 0x5d

    if-ne v4, v13, :cond_1f

    const/16 v12, 0x5b

    goto :goto_d

    const/4 v13, 0x2

    :cond_1f
    const/16 v13, 0x3e

    if-ne v4, v13, :cond_20

    const/16 v12, 0x3c

    goto :goto_d

    const/4 v1, 0x4

    :cond_20
    const/16 v13, 0x29

    if-ne v4, v13, :cond_19

    const/16 v12, 0x28

    goto :goto_d

    const/4 v12, 0x4

    :cond_21
    const/16 v13, 0x20

    if-eq v9, v13, :cond_22

    const/16 v13, 0x22

    if-ne v9, v13, :cond_23

    :cond_22
    const/16 v13, 0x22

    if-ne v0, v13, :cond_23

    if-nez v6, :cond_26

    const/4 v6, 0x1

    :goto_f
    if-eqz v6, :cond_27

    move v9, v0

    :cond_23
    :goto_10
    const/16 v13, 0x20

    if-eq v9, v13, :cond_24

    const/16 v13, 0x27

    if-ne v9, v13, :cond_25

    :cond_24
    const/16 v13, 0x27

    if-ne v0, v13, :cond_25

    if-nez v6, :cond_28

    const/4 v6, 0x1

    :goto_11
    if-eqz v6, :cond_29

    move v9, v0

    :cond_25
    :goto_12
    add-int/lit8 v5, v5, -0x1

    goto :goto_e

    const/4 v11, 0x4

    :cond_26
    const/4 v6, 0x0

    goto :goto_f

    const/4 v7, 0x4

    :cond_27
    const/16 v9, 0x20

    goto :goto_10

    const/4 v7, 0x1

    :cond_28
    const/4 v6, 0x0

    goto :goto_11

    const/4 v12, 0x7

    :cond_29
    const/16 v9, 0x20

    goto :goto_12

    const/4 v6, 0x1

    :cond_2a
    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    const/4 v14, -0x1

    invoke-static {v13, v14}, Lcom/henrythompson/quoda/CodeView;->access$1602(Lcom/henrythompson/quoda/CodeView;I)I

    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    const/4 v14, -0x1

    invoke-static {v13, v14}, Lcom/henrythompson/quoda/CodeView;->access$1702(Lcom/henrythompson/quoda/CodeView;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    const/4 v14, 0x3

    :catch_0
    move-exception v3

    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    const/4 v14, -0x1

    invoke-static {v13, v14}, Lcom/henrythompson/quoda/CodeView;->access$1602(Lcom/henrythompson/quoda/CodeView;I)I

    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    const/4 v14, -0x1

    invoke-static {v13, v14}, Lcom/henrythompson/quoda/CodeView;->access$1702(Lcom/henrythompson/quoda/CodeView;I)I

    goto/16 :goto_7

    const/4 v8, 0x1

    :cond_2b
    :try_start_1
    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    const/4 v14, -0x1

    invoke-static {v13, v14}, Lcom/henrythompson/quoda/CodeView;->access$1602(Lcom/henrythompson/quoda/CodeView;I)I

    iget-object v13, p0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    const/4 v14, -0x1

    invoke-static {v13, v14}, Lcom/henrythompson/quoda/CodeView;->access$1702(Lcom/henrythompson/quoda/CodeView;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    const/4 v8, 0x5
.end method
