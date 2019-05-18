.class public final Lorg/joni/NameEntry;
.super Ljava/lang/Object;
.source "NameEntry.java"


# static fields
.field static final INIT_NAME_BACKREFS_ALLOC_NUM:I = 0x8


# instance fields
.field backNum:I

.field backRef1:I

.field backRefs:[I

.field public final name:[B

.field public final nameEnd:I

.field public final nameP:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/joni/NameEntry;->name:[B

    .line 35
    iput p2, p0, Lorg/joni/NameEntry;->nameP:I

    .line 36
    iput p3, p0, Lorg/joni/NameEntry;->nameEnd:I

    .line 37
    return-void
.end method

.method private alloc()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/joni/NameEntry;->backRefs:[I

    .line 54
    return-void
.end method

.method private ensureSize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    iget v1, p0, Lorg/joni/NameEntry;->backNum:I

    iget-object v2, p0, Lorg/joni/NameEntry;->backRefs:[I

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 58
    iget-object v1, p0, Lorg/joni/NameEntry;->backRefs:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    .line 59
    .local v0, "tmp":[I
    iget-object v1, p0, Lorg/joni/NameEntry;->backRefs:[I

    iget-object v2, p0, Lorg/joni/NameEntry;->backRefs:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iput-object v0, p0, Lorg/joni/NameEntry;->backRefs:[I

    .line 62
    .end local v0    # "tmp":[I
    :cond_0
    return-void
.end method


# virtual methods
.method public addBackref(I)V
    .locals 3
    .param p1, "backRef"    # I

    .prologue
    .line 65
    iget v0, p0, Lorg/joni/NameEntry;->backNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/NameEntry;->backNum:I

    .line 67
    iget v0, p0, Lorg/joni/NameEntry;->backNum:I

    packed-switch v0, :pswitch_data_0

    .line 77
    invoke-direct {p0}, Lorg/joni/NameEntry;->ensureSize()V

    .line 78
    iget-object v0, p0, Lorg/joni/NameEntry;->backRefs:[I

    iget v1, p0, Lorg/joni/NameEntry;->backNum:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 80
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iput p1, p0, Lorg/joni/NameEntry;->backRef1:I

    goto :goto_0

    .line 72
    :pswitch_1
    invoke-direct {p0}, Lorg/joni/NameEntry;->alloc()V

    .line 73
    iget-object v0, p0, Lorg/joni/NameEntry;->backRefs:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/joni/NameEntry;->backRef1:I

    aput v2, v0, v1

    .line 74
    iget-object v0, p0, Lorg/joni/NameEntry;->backRefs:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getBackRefs()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    iget v1, p0, Lorg/joni/NameEntry;->backNum:I

    packed-switch v1, :pswitch_data_0

    .line 46
    iget v1, p0, Lorg/joni/NameEntry;->backNum:I

    new-array v0, v1, [I

    .line 47
    .local v0, "result":[I
    iget-object v1, p0, Lorg/joni/NameEntry;->backRefs:[I

    iget v2, p0, Lorg/joni/NameEntry;->backNum:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .end local v0    # "result":[I
    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    new-array v0, v3, [I

    goto :goto_0

    .line 44
    :pswitch_1
    const/4 v1, 0x1

    new-array v0, v1, [I

    iget v1, p0, Lorg/joni/NameEntry;->backRef1:I

    aput v1, v0, v3

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/joni/NameEntry;->name:[B

    iget v5, p0, Lorg/joni/NameEntry;->nameP:I

    iget v6, p0, Lorg/joni/NameEntry;->nameEnd:I

    iget v7, p0, Lorg/joni/NameEntry;->nameP:I

    sub-int/2addr v6, v7

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "buff":Ljava/lang/StringBuilder;
    iget v2, p0, Lorg/joni/NameEntry;->backNum:I

    if-nez v2, :cond_1

    .line 85
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 86
    :cond_1
    iget v2, p0, Lorg/joni/NameEntry;->backNum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 87
    iget v2, p0, Lorg/joni/NameEntry;->backRef1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 89
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lorg/joni/NameEntry;->backNum:I

    if-ge v1, v2, :cond_0

    .line 90
    if-lez v1, :cond_3

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_3
    iget-object v2, p0, Lorg/joni/NameEntry;->backRefs:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
