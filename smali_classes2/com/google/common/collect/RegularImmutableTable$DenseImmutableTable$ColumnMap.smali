.class final Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;
.super Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ColumnMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap",
        "<TC;",
        "Ljava/util/Map",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)V
    .locals 1

    .prologue
    .line 514
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    .line 515
    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$600(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;-><init>(I)V

    .line 516
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;Lcom/google/common/collect/RegularImmutableTable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;
    .param p2, "x1"    # Lcom/google/common/collect/RegularImmutableTable$1;

    .prologue
    .line 513
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)V

    return-void
.end method


# virtual methods
.method bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 513
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;->getValue(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getValue(I)Ljava/util/Map;
    .locals 2
    .param p1, "keyIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 527
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Column;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Column;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;I)V

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 533
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    const/4 v0, 0x0

    return v0
.end method

.method keyToIndex()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$400(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
