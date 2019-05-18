.class abstract Lorg/joni/StackMachine;
.super Lorg/joni/Matcher;
.source "StackMachine.java"

# interfaces
.implements Lorg/joni/constants/StackType;


# static fields
.field protected static final INVALID_INDEX:I = -0x1

.field private static final STATE_CHECK_BUFF_MALLOC_THRESHOLD_SIZE:I = 0x10

.field static final stacks:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<[",
            "Lorg/joni/StackEntry;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final memEndStk:I

.field protected final memStartStk:I

.field protected final repeatStk:[I

.field protected stack:[Lorg/joni/StackEntry;

.field protected stateCheckBuff:[B

.field stateCheckBuffSize:I

.field protected stk:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lorg/joni/StackMachine$1;

    invoke-direct {v0}, Lorg/joni/StackMachine$1;-><init>()V

    sput-object v0, Lorg/joni/StackMachine;->stacks:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>(Lorg/joni/Regex;[BII)V
    .locals 4
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/joni/Matcher;-><init>(Lorg/joni/Regex;[BII)V

    .line 46
    iget-boolean v1, p1, Lorg/joni/Regex;->stackNeeded:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/joni/StackMachine;->fetchStack()[Lorg/joni/StackEntry;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    .line 47
    iget v1, p1, Lorg/joni/Regex;->numRepeat:I

    iget v3, p1, Lorg/joni/Regex;->numMem:I

    shl-int/lit8 v3, v3, 0x1

    add-int v0, v1, v3

    .line 48
    .local v0, "n":I
    if-lez v0, :cond_0

    new-array v2, v0, [I

    :cond_0
    iput-object v2, p0, Lorg/joni/StackMachine;->repeatStk:[I

    .line 50
    iget v1, p1, Lorg/joni/Regex;->numRepeat:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/joni/StackMachine;->memStartStk:I

    .line 51
    iget v1, p0, Lorg/joni/StackMachine;->memStartStk:I

    iget v2, p1, Lorg/joni/Regex;->numMem:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/joni/StackMachine;->memEndStk:I

    .line 54
    return-void

    .end local v0    # "n":I
    :cond_1
    move-object v1, v2

    .line 46
    goto :goto_0
.end method

.method static synthetic access$000()[Lorg/joni/StackEntry;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lorg/joni/StackMachine;->allocateStack()[Lorg/joni/StackEntry;

    move-result-object v0

    return-object v0
.end method

.method private static allocateStack()[Lorg/joni/StackEntry;
    .locals 3

    .prologue
    .line 57
    const/16 v1, 0x40

    new-array v0, v1, [Lorg/joni/StackEntry;

    .line 58
    .local v0, "stack":[Lorg/joni/StackEntry;
    const/4 v1, 0x0

    new-instance v2, Lorg/joni/StackEntry;

    invoke-direct {v2}, Lorg/joni/StackEntry;-><init>()V

    aput-object v2, v0, v1

    .line 59
    return-object v0
.end method

.method private doubleStack()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v1, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lorg/joni/StackEntry;

    .line 64
    .local v0, "newStack":[Lorg/joni/StackEntry;
    iget-object v1, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    iget-object v2, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput-object v0, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    .line 66
    return-void
.end method

.method private static fetchStack()[Lorg/joni/StackEntry;
    .locals 3

    .prologue
    .line 77
    sget-object v2, Lorg/joni/StackMachine;->stacks:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 78
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[Lorg/joni/StackEntry;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/joni/StackEntry;

    .line 79
    .local v1, "stack":[Lorg/joni/StackEntry;
    if-nez v1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/ref/WeakReference;

    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[Lorg/joni/StackEntry;>;"
    invoke-static {}, Lorg/joni/StackMachine;->allocateStack()[Lorg/joni/StackEntry;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 81
    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[Lorg/joni/StackEntry;>;"
    sget-object v2, Lorg/joni/StackMachine;->stacks:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 83
    :cond_0
    return-object v1
.end method

.method private popDefault()Lorg/joni/StackEntry;
    .locals 4

    .prologue
    .line 357
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    iget v2, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/joni/StackMachine;->stk:I

    aget-object v0, v1, v2

    .line 359
    .local v0, "e":Lorg/joni/StackEntry;
    iget v1, v0, Lorg/joni/StackEntry;->type:I

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_1

    .line 360
    return-object v0

    .line 361
    :cond_1
    iget v1, v0, Lorg/joni/StackEntry;->type:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_2

    .line 362
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memStartStk:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemStart()I

    move-result v3

    aput v3, v1, v2

    .line 363
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memEndStk:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemEnd()I

    move-result v3

    aput v3, v1, v2

    goto :goto_0

    .line 364
    :cond_2
    iget v1, v0, Lorg/joni/StackEntry;->type:I

    const/16 v2, 0x300

    if-ne v1, v2, :cond_3

    .line 367
    iget-object v1, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getSi()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/joni/StackEntry;->decreaseRepeatCount()V

    goto :goto_0

    .line 368
    :cond_3
    iget v1, v0, Lorg/joni/StackEntry;->type:I

    const v2, 0x8200

    if-ne v1, v2, :cond_0

    .line 369
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memStartStk:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemStart()I

    move-result v3

    aput v3, v1, v2

    .line 370
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memEndStk:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemEnd()I

    move-result v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method private popFree()Lorg/joni/StackEntry;
    .locals 3

    .prologue
    .line 330
    :cond_0
    iget-object v1, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    iget v2, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/joni/StackMachine;->stk:I

    aget-object v0, v1, v2

    .line 332
    .local v0, "e":Lorg/joni/StackEntry;
    iget v1, v0, Lorg/joni/StackEntry;->type:I

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_0

    .line 333
    return-object v0
.end method

.method private popMemStart()Lorg/joni/StackEntry;
    .locals 4

    .prologue
    .line 342
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    iget v2, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/joni/StackMachine;->stk:I

    aget-object v0, v1, v2

    .line 344
    .local v0, "e":Lorg/joni/StackEntry;
    iget v1, v0, Lorg/joni/StackEntry;->type:I

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_1

    .line 345
    return-object v0

    .line 346
    :cond_1
    iget v1, v0, Lorg/joni/StackEntry;->type:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    .line 347
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memStartStk:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemStart()I

    move-result v3

    aput v3, v1, v2

    .line 348
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memEndStk:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemEnd()I

    move-result v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method private push(IIII)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "pat"    # I
    .param p3, "s"    # I
    .param p4, "prev"    # I

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/joni/StackMachine;->ensure1()Lorg/joni/StackEntry;

    move-result-object v0

    .line 163
    .local v0, "e":Lorg/joni/StackEntry;
    iput p1, v0, Lorg/joni/StackEntry;->type:I

    .line 164
    invoke-virtual {v0, p2}, Lorg/joni/StackEntry;->setStatePCode(I)V

    .line 165
    invoke-virtual {v0, p3}, Lorg/joni/StackEntry;->setStatePStr(I)V

    .line 166
    invoke-virtual {v0, p4}, Lorg/joni/StackEntry;->setStatePStrPrev(I)V

    .line 168
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 169
    return-void
.end method

.method private stateCheckMark()V
    .locals 7

    .prologue
    .line 125
    iget-object v2, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    iget v3, p0, Lorg/joni/StackMachine;->stk:I

    aget-object v0, v2, v3

    .line 126
    .local v0, "e":Lorg/joni/StackEntry;
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getStatePStr()I

    move-result v2

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getStateCheck()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/joni/StackMachine;->stateCheckPos(II)I

    move-result v1

    .line 127
    .local v1, "x":I
    iget-object v2, p0, Lorg/joni/StackMachine;->stateCheckBuff:[B

    div-int/lit8 v3, v1, 0x8

    aget-byte v4, v2, v3

    const/4 v5, 0x1

    rem-int/lit8 v6, v1, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 128
    return-void
.end method

.method private stateCheckPos(II)I
    .locals 2
    .param p1, "s"    # I
    .param p2, "snum"    # I

    .prologue
    .line 111
    iget v0, p0, Lorg/joni/StackMachine;->str:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lorg/joni/StackMachine;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->numCombExpCheck:I

    mul-int/2addr v0, v1

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected final ensure1()Lorg/joni/StackEntry;
    .locals 3

    .prologue
    .line 96
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    iget-object v2, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lorg/joni/StackMachine;->doubleStack()V

    .line 97
    :cond_0
    iget-object v1, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    iget v2, p0, Lorg/joni/StackMachine;->stk:I

    aget-object v0, v1, v2

    .line 98
    .local v0, "e":Lorg/joni/StackEntry;
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    iget v2, p0, Lorg/joni/StackMachine;->stk:I

    new-instance v0, Lorg/joni/StackEntry;

    .end local v0    # "e":Lorg/joni/StackEntry;
    invoke-direct {v0}, Lorg/joni/StackEntry;-><init>()V

    .restart local v0    # "e":Lorg/joni/StackEntry;
    aput-object v0, v1, v2

    .line 99
    :cond_1
    return-object v0
.end method

.method protected final getMemStart(I)I
    .locals 5
    .param p1, "mnum"    # I

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, "level":I
    iget v2, p0, Lorg/joni/StackMachine;->stk:I

    .line 269
    .local v2, "stkp":I
    :cond_0
    :goto_0
    if-lez v2, :cond_2

    .line 270
    add-int/lit8 v2, v2, -0x1

    .line 271
    iget-object v3, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v0, v3, v2

    .line 272
    .local v0, "e":Lorg/joni/StackEntry;
    iget v3, v0, Lorg/joni/StackEntry;->type:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_1
    iget v3, v0, Lorg/joni/StackEntry;->type:I

    const/16 v4, 0x100

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 275
    if-nez v1, :cond_3

    .line 279
    .end local v0    # "e":Lorg/joni/StackEntry;
    :cond_2
    return v2

    .line 276
    .restart local v0    # "e":Lorg/joni/StackEntry;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method protected final getRepeat(I)I
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 585
    const/4 v2, 0x0

    .line 586
    .local v2, "level":I
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 588
    .local v1, "k":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 589
    iget-object v3, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v0, v3, v1

    .line 591
    .local v0, "e":Lorg/joni/StackEntry;
    iget v3, v0, Lorg/joni/StackEntry;->type:I

    const/16 v4, 0x700

    if-ne v3, v4, :cond_1

    .line 592
    if-nez v2, :cond_0

    .line 593
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getRepeatNum()I

    move-result v3

    if-ne v3, p1, :cond_0

    return v1

    .line 595
    :cond_1
    iget v3, v0, Lorg/joni/StackEntry;->type:I

    const/16 v4, 0x800

    if-ne v3, v4, :cond_2

    .line 596
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 597
    :cond_2
    iget v3, v0, Lorg/joni/StackEntry;->type:I

    const/16 v4, 0x900

    if-ne v3, v4, :cond_0

    .line 598
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected final init()V
    .locals 6

    .prologue
    .line 87
    iget-object v1, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/joni/StackMachine;->regex:Lorg/joni/Regex;

    iget v2, v2, Lorg/joni/Regex;->codeLength:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/joni/StackMachine;->pushEnsured(II)V

    .line 88
    :cond_0
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    if-eqz v1, :cond_1

    .line 89
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/joni/StackMachine;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->numMem:I

    if-gt v0, v1, :cond_1

    .line 90
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memStartStk:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v4, p0, Lorg/joni/StackMachine;->memEndStk:I

    add-int/2addr v4, v0

    const/4 v5, -0x1

    aput v5, v3, v4

    aput v5, v1, v2

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected final nullCheck(II)I
    .locals 4
    .param p1, "id"    # I
    .param p2, "s"    # I

    .prologue
    .line 455
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 457
    .local v1, "k":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 458
    iget-object v2, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v0, v2, v1

    .line 460
    .local v0, "e":Lorg/joni/StackEntry;
    iget v2, v0, Lorg/joni/StackEntry;->type:I

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_0

    .line 461
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getNullCheckNum()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 462
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getNullCheckPStr()I

    move-result v2

    if-ne v2, p2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final nullCheckMemSt(II)I
    .locals 6
    .param p1, "id"    # I
    .param p2, "s"    # I

    .prologue
    .line 490
    iget v3, p0, Lorg/joni/StackMachine;->stk:I

    .line 493
    .local v3, "k":I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 494
    iget-object v4, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v0, v4, v3

    .line 496
    .local v0, "e":Lorg/joni/StackEntry;
    iget v4, v0, Lorg/joni/StackEntry;->type:I

    const/16 v5, 0x3000

    if-ne v4, v5, :cond_0

    .line 497
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getNullCheckNum()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 498
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getNullCheckPStr()I

    move-result v4

    if-eq v4, p2, :cond_2

    .line 499
    const/4 v2, 0x0

    .line 530
    .local v2, "isNull":I
    :cond_1
    :goto_0
    return v2

    .line 503
    .end local v2    # "isNull":I
    :cond_2
    const/4 v2, 0x1

    .line 504
    .restart local v2    # "isNull":I
    :goto_1
    iget v4, p0, Lorg/joni/StackMachine;->stk:I

    if-ge v3, v4, :cond_1

    .line 505
    iget v4, v0, Lorg/joni/StackEntry;->type:I

    const/16 v5, 0x100

    if-ne v4, v5, :cond_6

    .line 506
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemEnd()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 507
    const/4 v2, 0x0

    .line 508
    goto :goto_0

    .line 510
    :cond_3
    iget-object v4, p0, Lorg/joni/StackMachine;->regex:Lorg/joni/Regex;

    iget v4, v4, Lorg/joni/Regex;->btMemEnd:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v5

    invoke-static {v4, v5}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 511
    iget-object v4, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemEnd()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/joni/StackEntry;->getMemPStr()I

    move-result v1

    .line 515
    .local v1, "endp":I
    :goto_2
    iget-object v4, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemStart()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/joni/StackEntry;->getMemPStr()I

    move-result v4

    if-eq v4, v1, :cond_5

    .line 516
    const/4 v2, 0x0

    .line 517
    goto :goto_0

    .line 513
    .end local v1    # "endp":I
    :cond_4
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemEnd()I

    move-result v1

    .restart local v1    # "endp":I
    goto :goto_2

    .line 518
    :cond_5
    if-eq v1, p2, :cond_6

    .line 519
    const/4 v2, -0x1

    .line 522
    .end local v1    # "endp":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 523
    iget-object v4, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v0, v4, v3

    goto :goto_1
.end method

.method protected final nullCheckMemStRec(II)I
    .locals 7
    .param p1, "id"    # I
    .param p2, "s"    # I

    .prologue
    .line 534
    const/4 v4, 0x0

    .line 535
    .local v4, "level":I
    iget v3, p0, Lorg/joni/StackMachine;->stk:I

    .line 538
    .local v3, "k":I
    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    .line 539
    iget-object v5, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v0, v5, v3

    .line 541
    .local v0, "e":Lorg/joni/StackEntry;
    iget v5, v0, Lorg/joni/StackEntry;->type:I

    const/16 v6, 0x3000

    if-ne v5, v6, :cond_8

    .line 542
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getNullCheckNum()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 543
    if-nez v4, :cond_7

    .line 544
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getNullCheckPStr()I

    move-result v5

    if-eq v5, p2, :cond_2

    .line 545
    const/4 v2, 0x0

    .line 581
    .local v2, "isNull":I
    :cond_1
    :goto_1
    return v2

    .line 549
    .end local v2    # "isNull":I
    :cond_2
    const/4 v2, 0x1

    .line 550
    .restart local v2    # "isNull":I
    :goto_2
    iget v5, p0, Lorg/joni/StackMachine;->stk:I

    if-ge v3, v5, :cond_1

    .line 551
    iget v5, v0, Lorg/joni/StackEntry;->type:I

    const/16 v6, 0x100

    if-ne v5, v6, :cond_6

    .line 552
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemEnd()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 553
    const/4 v2, 0x0

    .line 554
    goto :goto_1

    .line 556
    :cond_3
    iget-object v5, p0, Lorg/joni/StackMachine;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->btMemEnd:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v6

    invoke-static {v5, v6}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 557
    iget-object v5, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemEnd()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/joni/StackEntry;->getMemPStr()I

    move-result v1

    .line 561
    .local v1, "endp":I
    :goto_3
    iget-object v5, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemStart()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/joni/StackEntry;->getMemPStr()I

    move-result v5

    if-eq v5, v1, :cond_5

    .line 562
    const/4 v2, 0x0

    .line 563
    goto :goto_1

    .line 559
    .end local v1    # "endp":I
    :cond_4
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemEnd()I

    move-result v1

    .restart local v1    # "endp":I
    goto :goto_3

    .line 564
    :cond_5
    if-eq v1, p2, :cond_6

    .line 565
    const/4 v2, -0x1

    .line 568
    .end local v1    # "endp":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 569
    iget-object v5, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v0, v5, v3

    goto :goto_2

    .line 574
    .end local v2    # "isNull":I
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 577
    :cond_8
    iget v5, v0, Lorg/joni/StackEntry;->type:I

    const/16 v6, 0x5000

    if-ne v5, v6, :cond_0

    .line 578
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getNullCheckNum()I

    move-result v5

    if-ne v5, p1, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected final nullCheckRec(II)I
    .locals 5
    .param p1, "id"    # I
    .param p2, "s"    # I

    .prologue
    .line 469
    const/4 v2, 0x0

    .line 470
    .local v2, "level":I
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 472
    .local v1, "k":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 473
    iget-object v3, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v0, v3, v1

    .line 475
    .local v0, "e":Lorg/joni/StackEntry;
    iget v3, v0, Lorg/joni/StackEntry;->type:I

    const/16 v4, 0x3000

    if-ne v3, v4, :cond_3

    .line 476
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getNullCheckNum()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 477
    if-nez v2, :cond_2

    .line 478
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getNullCheckPStr()I

    move-result v3

    if-ne v3, p2, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 480
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 483
    :cond_3
    iget v3, v0, Lorg/joni/StackEntry;->type:I

    const/16 v4, 0x5000

    if-ne v3, v4, :cond_0

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected final pop()Lorg/joni/StackEntry;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/joni/StackMachine;->regex:Lorg/joni/Regex;

    iget v0, v0, Lorg/joni/Regex;->stackPopLevel:I

    packed-switch v0, :pswitch_data_0

    .line 324
    invoke-direct {p0}, Lorg/joni/StackMachine;->popDefault()Lorg/joni/StackEntry;

    move-result-object v0

    :goto_0
    return-object v0

    .line 320
    :pswitch_0
    invoke-direct {p0}, Lorg/joni/StackMachine;->popFree()Lorg/joni/StackEntry;

    move-result-object v0

    goto :goto_0

    .line 322
    :pswitch_1
    invoke-direct {p0}, Lorg/joni/StackMachine;->popMemStart()Lorg/joni/StackEntry;

    move-result-object v0

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final popOne()V
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/joni/StackMachine;->stk:I

    .line 315
    return-void
.end method

.method protected final popTilLookBehindNot()V
    .locals 4

    .prologue
    .line 402
    :cond_0
    :goto_0
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 403
    iget-object v1, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    iget v2, p0, Lorg/joni/StackMachine;->stk:I

    aget-object v0, v1, v2

    .line 405
    .local v0, "e":Lorg/joni/StackEntry;
    iget v1, v0, Lorg/joni/StackEntry;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 421
    return-void

    .line 407
    :cond_1
    iget v1, v0, Lorg/joni/StackEntry;->type:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_2

    .line 408
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memStartStk:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemStart()I

    move-result v3

    aput v3, v1, v2

    .line 409
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memEndStk:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemEnd()I

    move-result v3

    aput v3, v1, v2

    goto :goto_0

    .line 410
    :cond_2
    iget v1, v0, Lorg/joni/StackEntry;->type:I

    const/16 v2, 0x300

    if-ne v1, v2, :cond_3

    .line 413
    iget-object v1, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getSi()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/joni/StackEntry;->decreaseRepeatCount()V

    goto :goto_0

    .line 414
    :cond_3
    iget v1, v0, Lorg/joni/StackEntry;->type:I

    const v2, 0x8200

    if-ne v1, v2, :cond_0

    .line 415
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memStartStk:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemStart()I

    move-result v3

    aput v3, v1, v2

    .line 416
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memEndStk:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemEnd()I

    move-result v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method protected final popTilPosNot()V
    .locals 4

    .prologue
    .line 379
    :cond_0
    :goto_0
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 380
    iget-object v1, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    iget v2, p0, Lorg/joni/StackMachine;->stk:I

    aget-object v0, v1, v2

    .line 382
    .local v0, "e":Lorg/joni/StackEntry;
    iget v1, v0, Lorg/joni/StackEntry;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 398
    return-void

    .line 384
    :cond_1
    iget v1, v0, Lorg/joni/StackEntry;->type:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_2

    .line 385
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memStartStk:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemStart()I

    move-result v3

    aput v3, v1, v2

    .line 386
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memEndStk:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemStart()I

    move-result v3

    aput v3, v1, v2

    goto :goto_0

    .line 387
    :cond_2
    iget v1, v0, Lorg/joni/StackEntry;->type:I

    const/16 v2, 0x300

    if-ne v1, v2, :cond_3

    .line 390
    iget-object v1, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getSi()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/joni/StackEntry;->decreaseRepeatCount()V

    goto :goto_0

    .line 391
    :cond_3
    iget v1, v0, Lorg/joni/StackEntry;->type:I

    const v2, 0x8200

    if-ne v1, v2, :cond_0

    .line 392
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memStartStk:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemStart()I

    move-result v3

    aput v3, v1, v2

    .line 393
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memEndStk:I

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemNum()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/joni/StackEntry;->getMemStart()I

    move-result v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method protected final posEnd()I
    .locals 5

    .prologue
    const/16 v4, 0xa00

    .line 424
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 426
    .local v1, "k":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 427
    iget-object v2, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v0, v2, v1

    .line 428
    .local v0, "e":Lorg/joni/StackEntry;
    iget v2, v0, Lorg/joni/StackEntry;->type:I

    and-int/lit16 v2, v2, 0x10ff

    if-eqz v2, :cond_1

    .line 429
    iput v4, v0, Lorg/joni/StackEntry;->type:I

    goto :goto_0

    .line 430
    :cond_1
    iget v2, v0, Lorg/joni/StackEntry;->type:I

    const/16 v3, 0x500

    if-ne v2, v3, :cond_0

    .line 431
    iput v4, v0, Lorg/joni/StackEntry;->type:I

    .line 435
    return v1
.end method

.method protected final pushAlt(III)V
    .locals 1
    .param p1, "pat"    # I
    .param p2, "s"    # I
    .param p3, "prev"    # I

    .prologue
    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/joni/StackMachine;->push(IIII)V

    .line 201
    return-void
.end method

.method protected final pushAltWithStateCheck(IIII)V
    .locals 2
    .param p1, "pat"    # I
    .param p2, "s"    # I
    .param p3, "sprev"    # I
    .param p4, "snum"    # I

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/joni/StackMachine;->ensure1()Lorg/joni/StackEntry;

    move-result-object v0

    .line 181
    .local v0, "e":Lorg/joni/StackEntry;
    const/4 v1, 0x1

    iput v1, v0, Lorg/joni/StackEntry;->type:I

    .line 182
    invoke-virtual {v0, p1}, Lorg/joni/StackEntry;->setStatePCode(I)V

    .line 183
    invoke-virtual {v0, p2}, Lorg/joni/StackEntry;->setStatePStr(I)V

    .line 184
    invoke-virtual {v0, p3}, Lorg/joni/StackEntry;->setStatePStrPrev(I)V

    .line 186
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 187
    return-void
.end method

.method protected final pushCallFrame(I)V
    .locals 2
    .param p1, "pat"    # I

    .prologue
    .line 298
    invoke-virtual {p0}, Lorg/joni/StackMachine;->ensure1()Lorg/joni/StackEntry;

    move-result-object v0

    .line 299
    .local v0, "e":Lorg/joni/StackEntry;
    const/16 v1, 0x800

    iput v1, v0, Lorg/joni/StackEntry;->type:I

    .line 300
    invoke-virtual {v0, p1}, Lorg/joni/StackEntry;->setCallFrameRetAddr(I)V

    .line 301
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 302
    return-void
.end method

.method protected final pushEnsured(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "pat"    # I

    .prologue
    .line 172
    iget-object v1, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    iget v2, p0, Lorg/joni/StackMachine;->stk:I

    aget-object v0, v1, v2

    .line 173
    .local v0, "e":Lorg/joni/StackEntry;
    iput p1, v0, Lorg/joni/StackEntry;->type:I

    .line 174
    invoke-virtual {v0, p2}, Lorg/joni/StackEntry;->setStatePCode(I)V

    .line 176
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 177
    return-void
.end method

.method protected final pushLookBehindNot(III)V
    .locals 1
    .param p1, "pat"    # I
    .param p2, "s"    # I
    .param p3, "sprev"    # I

    .prologue
    .line 216
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/joni/StackMachine;->push(IIII)V

    .line 217
    return-void
.end method

.method protected final pushMemEnd(II)V
    .locals 4
    .param p1, "mnum"    # I
    .param p2, "s"    # I

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/joni/StackMachine;->ensure1()Lorg/joni/StackEntry;

    move-result-object v0

    .line 249
    .local v0, "e":Lorg/joni/StackEntry;
    const v1, 0x8200

    iput v1, v0, Lorg/joni/StackEntry;->type:I

    .line 250
    invoke-virtual {v0, p1}, Lorg/joni/StackEntry;->setMemNum(I)V

    .line 251
    invoke-virtual {v0, p2}, Lorg/joni/StackEntry;->setMemPstr(I)V

    .line 252
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memStartStk:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/joni/StackEntry;->setMemStart(I)V

    .line 253
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memEndStk:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/joni/StackEntry;->setMemEnd(I)V

    .line 254
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memEndStk:I

    add-int/2addr v2, p1

    iget v3, p0, Lorg/joni/StackMachine;->stk:I

    aput v3, v1, v2

    .line 255
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 256
    return-void
.end method

.method protected final pushMemEndMark(I)V
    .locals 2
    .param p1, "mnum"    # I

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/joni/StackMachine;->ensure1()Lorg/joni/StackEntry;

    move-result-object v0

    .line 260
    .local v0, "e":Lorg/joni/StackEntry;
    const v1, 0x8400

    iput v1, v0, Lorg/joni/StackEntry;->type:I

    .line 261
    invoke-virtual {v0, p1}, Lorg/joni/StackEntry;->setMemNum(I)V

    .line 262
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 263
    return-void
.end method

.method protected final pushMemStart(II)V
    .locals 4
    .param p1, "mnum"    # I
    .param p2, "s"    # I

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/joni/StackMachine;->ensure1()Lorg/joni/StackEntry;

    move-result-object v0

    .line 237
    .local v0, "e":Lorg/joni/StackEntry;
    const/16 v1, 0x100

    iput v1, v0, Lorg/joni/StackEntry;->type:I

    .line 238
    invoke-virtual {v0, p1}, Lorg/joni/StackEntry;->setMemNum(I)V

    .line 239
    invoke-virtual {v0, p2}, Lorg/joni/StackEntry;->setMemPstr(I)V

    .line 240
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memStartStk:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/joni/StackEntry;->setMemStart(I)V

    .line 241
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memEndStk:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/joni/StackEntry;->setMemEnd(I)V

    .line 242
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memStartStk:I

    add-int/2addr v2, p1

    iget v3, p0, Lorg/joni/StackMachine;->stk:I

    aput v3, v1, v2

    .line 243
    iget-object v1, p0, Lorg/joni/StackMachine;->repeatStk:[I

    iget v2, p0, Lorg/joni/StackMachine;->memEndStk:I

    add-int/2addr v2, p1

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 244
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 245
    return-void
.end method

.method protected final pushNullCheckEnd(I)V
    .locals 2
    .param p1, "cnum"    # I

    .prologue
    .line 291
    invoke-virtual {p0}, Lorg/joni/StackMachine;->ensure1()Lorg/joni/StackEntry;

    move-result-object v0

    .line 292
    .local v0, "e":Lorg/joni/StackEntry;
    const/16 v1, 0x5000

    iput v1, v0, Lorg/joni/StackEntry;->type:I

    .line 293
    invoke-virtual {v0, p1}, Lorg/joni/StackEntry;->setNullCheckNum(I)V

    .line 294
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 295
    return-void
.end method

.method protected final pushNullCheckStart(II)V
    .locals 2
    .param p1, "cnum"    # I
    .param p2, "s"    # I

    .prologue
    .line 283
    invoke-virtual {p0}, Lorg/joni/StackMachine;->ensure1()Lorg/joni/StackEntry;

    move-result-object v0

    .line 284
    .local v0, "e":Lorg/joni/StackEntry;
    const/16 v1, 0x3000

    iput v1, v0, Lorg/joni/StackEntry;->type:I

    .line 285
    invoke-virtual {v0, p1}, Lorg/joni/StackEntry;->setNullCheckNum(I)V

    .line 286
    invoke-virtual {v0, p2}, Lorg/joni/StackEntry;->setNullCheckPStr(I)V

    .line 287
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 288
    return-void
.end method

.method protected final pushPos(II)V
    .locals 2
    .param p1, "s"    # I
    .param p2, "prev"    # I

    .prologue
    .line 204
    const/16 v0, 0x500

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/joni/StackMachine;->push(IIII)V

    .line 205
    return-void
.end method

.method protected final pushPosNot(III)V
    .locals 1
    .param p1, "pat"    # I
    .param p2, "s"    # I
    .param p3, "prev"    # I

    .prologue
    .line 208
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/joni/StackMachine;->push(IIII)V

    .line 209
    return-void
.end method

.method protected final pushRepeat(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "pat"    # I

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/joni/StackMachine;->ensure1()Lorg/joni/StackEntry;

    move-result-object v0

    .line 221
    .local v0, "e":Lorg/joni/StackEntry;
    const/16 v1, 0x700

    iput v1, v0, Lorg/joni/StackEntry;->type:I

    .line 222
    invoke-virtual {v0, p1}, Lorg/joni/StackEntry;->setRepeatNum(I)V

    .line 223
    invoke-virtual {v0, p2}, Lorg/joni/StackEntry;->setRepeatPCode(I)V

    .line 224
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/joni/StackEntry;->setRepeatCount(I)V

    .line 225
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 226
    return-void
.end method

.method protected final pushRepeatInc(I)V
    .locals 2
    .param p1, "sindex"    # I

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/joni/StackMachine;->ensure1()Lorg/joni/StackEntry;

    move-result-object v0

    .line 230
    .local v0, "e":Lorg/joni/StackEntry;
    const/16 v1, 0x300

    iput v1, v0, Lorg/joni/StackEntry;->type:I

    .line 231
    invoke-virtual {v0, p1}, Lorg/joni/StackEntry;->setSi(I)V

    .line 232
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 233
    return-void
.end method

.method protected final pushReturn()V
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/joni/StackMachine;->ensure1()Lorg/joni/StackEntry;

    move-result-object v0

    .line 306
    .local v0, "e":Lorg/joni/StackEntry;
    const/16 v1, 0x900

    iput v1, v0, Lorg/joni/StackEntry;->type:I

    .line 307
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 308
    return-void
.end method

.method protected final pushStateCheck(II)V
    .locals 2
    .param p1, "s"    # I
    .param p2, "snum"    # I

    .prologue
    .line 190
    iget-object v1, p0, Lorg/joni/StackMachine;->stateCheckBuff:[B

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {p0}, Lorg/joni/StackMachine;->ensure1()Lorg/joni/StackEntry;

    move-result-object v0

    .line 192
    .local v0, "e":Lorg/joni/StackEntry;
    const/16 v1, 0x1000

    iput v1, v0, Lorg/joni/StackEntry;->type:I

    .line 193
    invoke-virtual {v0, p1}, Lorg/joni/StackEntry;->setStatePStr(I)V

    .line 194
    invoke-virtual {v0, p2}, Lorg/joni/StackEntry;->setStateCheck(I)V

    .line 195
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 197
    .end local v0    # "e":Lorg/joni/StackEntry;
    :cond_0
    return-void
.end method

.method protected final pushStopBT()V
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/joni/StackMachine;->pushType(I)V

    .line 213
    return-void
.end method

.method protected final pushType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/joni/StackMachine;->ensure1()Lorg/joni/StackEntry;

    move-result-object v0

    iput p1, v0, Lorg/joni/StackEntry;->type:I

    .line 104
    iget v0, p0, Lorg/joni/StackMachine;->stk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/StackMachine;->stk:I

    .line 105
    return-void
.end method

.method protected final sreturn()I
    .locals 5

    .prologue
    .line 604
    const/4 v2, 0x0

    .line 605
    .local v2, "level":I
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 607
    .local v1, "k":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 608
    iget-object v3, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v0, v3, v1

    .line 610
    .local v0, "e":Lorg/joni/StackEntry;
    iget v3, v0, Lorg/joni/StackEntry;->type:I

    const/16 v4, 0x800

    if-ne v3, v4, :cond_2

    .line 611
    if-nez v2, :cond_1

    .line 612
    invoke-virtual {v0}, Lorg/joni/StackEntry;->getCallFrameRetAddr()I

    move-result v3

    return v3

    .line 614
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 616
    :cond_2
    iget v3, v0, Lorg/joni/StackEntry;->type:I

    const/16 v4, 0x900

    if-ne v3, v4, :cond_0

    .line 617
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected final stateCheckBuffClear()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joni/StackMachine;->stateCheckBuff:[B

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lorg/joni/StackMachine;->stateCheckBuffSize:I

    .line 159
    return-void
.end method

.method protected final stateCheckBuffInit(III)V
    .locals 4
    .param p1, "strLength"    # I
    .param p2, "offset"    # I
    .param p3, "stateNum"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 133
    if-lez p3, :cond_2

    const/4 v1, 0x7

    if-lt p1, v1, :cond_2

    .line 134
    add-int/lit8 v1, p1, 0x1

    mul-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x7

    ushr-int/lit8 v0, v1, 0x3

    .line 135
    .local v0, "size":I
    mul-int v1, p2, p3

    ushr-int/lit8 p2, v1, 0x3

    .line 137
    if-lez v0, :cond_1

    if-ge p2, v0, :cond_1

    const/16 v1, 0x4000

    if-ge v0, v1, :cond_1

    .line 138
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 139
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/joni/StackMachine;->stateCheckBuff:[B

    .line 144
    :goto_0
    iget-object v1, p0, Lorg/joni/StackMachine;->stateCheckBuff:[B

    sub-int v2, v0, p2

    invoke-static {v1, p2, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 145
    iput v0, p0, Lorg/joni/StackMachine;->stateCheckBuffSize:I

    .line 154
    .end local v0    # "size":I
    :goto_1
    return-void

    .line 142
    .restart local v0    # "size":I
    :cond_0
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/joni/StackMachine;->stateCheckBuff:[B

    goto :goto_0

    .line 147
    :cond_1
    iput-object v2, p0, Lorg/joni/StackMachine;->stateCheckBuff:[B

    .line 148
    iput v3, p0, Lorg/joni/StackMachine;->stateCheckBuffSize:I

    goto :goto_1

    .line 151
    .end local v0    # "size":I
    :cond_2
    iput-object v2, p0, Lorg/joni/StackMachine;->stateCheckBuff:[B

    .line 152
    iput v3, p0, Lorg/joni/StackMachine;->stateCheckBuffSize:I

    goto :goto_1
.end method

.method protected final stateCheckVal(II)Z
    .locals 5
    .param p1, "s"    # I
    .param p2, "snum"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    iget-object v3, p0, Lorg/joni/StackMachine;->stateCheckBuff:[B

    if-eqz v3, :cond_1

    .line 117
    invoke-direct {p0, p1, p2}, Lorg/joni/StackMachine;->stateCheckPos(II)I

    move-result v0

    .line 118
    .local v0, "x":I
    iget-object v3, p0, Lorg/joni/StackMachine;->stateCheckBuff:[B

    div-int/lit8 v4, v0, 0x8

    aget-byte v3, v3, v4

    rem-int/lit8 v4, v0, 0x8

    shl-int v4, v1, v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 120
    .end local v0    # "x":I
    :goto_0
    return v1

    .restart local v0    # "x":I
    :cond_0
    move v1, v2

    .line 118
    goto :goto_0

    .end local v0    # "x":I
    :cond_1
    move v1, v2

    .line 120
    goto :goto_0
.end method

.method protected final stopBtEnd()V
    .locals 5

    .prologue
    const/16 v4, 0xa00

    .line 439
    iget v1, p0, Lorg/joni/StackMachine;->stk:I

    .line 441
    .local v1, "k":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 442
    iget-object v2, p0, Lorg/joni/StackMachine;->stack:[Lorg/joni/StackEntry;

    aget-object v0, v2, v1

    .line 444
    .local v0, "e":Lorg/joni/StackEntry;
    iget v2, v0, Lorg/joni/StackEntry;->type:I

    and-int/lit16 v2, v2, 0x10ff

    if-eqz v2, :cond_1

    .line 445
    iput v4, v0, Lorg/joni/StackEntry;->type:I

    goto :goto_0

    .line 446
    :cond_1
    iget v2, v0, Lorg/joni/StackEntry;->type:I

    const/16 v3, 0x600

    if-ne v2, v3, :cond_0

    .line 447
    iput v4, v0, Lorg/joni/StackEntry;->type:I

    .line 451
    return-void
.end method
