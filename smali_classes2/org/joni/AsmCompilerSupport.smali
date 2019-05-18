.class abstract Lorg/joni/AsmCompilerSupport;
.super Lorg/joni/Compiler;
.source "AsmCompilerSupport.java"

# interfaces
.implements Lorg/objectweb/asm/Opcodes;
.implements Lorg/joni/constants/AsmConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joni/AsmCompilerSupport$DummyClassLoader;
    }
.end annotation


# static fields
.field static REG_NUM:I

.field private static final loader:Lorg/joni/AsmCompilerSupport$DummyClassLoader;


# instance fields
.field protected bitsets:I

.field protected factory:Lorg/objectweb/asm/ClassWriter;

.field protected factoryInit:Lorg/objectweb/asm/MethodVisitor;

.field protected factoryName:Ljava/lang/String;

.field protected machine:Lorg/objectweb/asm/ClassWriter;

.field protected machineInit:Lorg/objectweb/asm/MethodVisitor;

.field protected machineName:Ljava/lang/String;

.field protected match:Lorg/objectweb/asm/MethodVisitor;

.field protected maxStack:I

.field protected maxVars:I

.field protected ranges:I

.field protected templates:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Lorg/joni/AsmCompilerSupport;->REG_NUM:I

    .line 57
    new-instance v0, Lorg/joni/AsmCompilerSupport$DummyClassLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/joni/AsmCompilerSupport$DummyClassLoader;-><init>(Lorg/joni/AsmCompilerSupport$1;)V

    sput-object v0, Lorg/joni/AsmCompilerSupport;->loader:Lorg/joni/AsmCompilerSupport$DummyClassLoader;

    return-void
.end method

.method constructor <init>(Lorg/joni/Analyser;)V
    .locals 1
    .param p1, "analyser"    # Lorg/joni/Analyser;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/joni/Compiler;-><init>(Lorg/joni/Analyser;)V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lorg/joni/AsmCompilerSupport;->maxStack:I

    .line 42
    const/4 v0, 0x6

    iput v0, p0, Lorg/joni/AsmCompilerSupport;->maxVars:I

    .line 61
    return-void
.end method

.method private buildArray(III)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I
    .param p3, "type"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x59

    invoke-interface {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 251
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    invoke-direct {p0, v0, p1}, Lorg/joni/AsmCompilerSupport;->loadInt(Lorg/objectweb/asm/MethodVisitor;I)V

    .line 252
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    invoke-direct {p0, v0, p2}, Lorg/joni/AsmCompilerSupport;->loadInt(Lorg/objectweb/asm/MethodVisitor;I)V

    .line 253
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    invoke-interface {v0, p3}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 254
    return-void
.end method

.method private installArray(Ljava/lang/String;[BII)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arr"    # [B
    .param p3, "p"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 241
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factory:Lorg/objectweb/asm/ClassWriter;

    const/16 v1, 0x12

    const-string v3, "[B"

    move-object v2, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    .line 242
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 243
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    array-length v1, p2

    invoke-direct {p0, v0, v1}, Lorg/joni/AsmCompilerSupport;->loadInt(Lorg/objectweb/asm/MethodVisitor;I)V

    .line 244
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xbc

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    .line 245
    move v6, p3

    .local v6, "i":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    add-int v0, p3, p4

    if-ge v6, v0, :cond_0

    aget-byte v0, p2, v6

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x54

    invoke-direct {p0, v7, v0, v1}, Lorg/joni/AsmCompilerSupport;->buildArray(III)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb5

    iget-object v2, p0, Lorg/joni/AsmCompilerSupport;->factoryName:Ljava/lang/String;

    const-string v3, "[B"

    invoke-interface {v0, v1, v2, p1, v3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private installArray(Ljava/lang/String;[I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arr"    # [I

    .prologue
    const/4 v4, 0x0

    .line 232
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factory:Lorg/objectweb/asm/ClassWriter;

    const/16 v1, 0x12

    const-string v3, "[I"

    move-object v2, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    .line 233
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 234
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    array-length v1, p2

    invoke-direct {p0, v0, v1}, Lorg/joni/AsmCompilerSupport;->loadInt(Lorg/objectweb/asm/MethodVisitor;I)V

    .line 235
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xbc

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    .line 236
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p2

    if-ge v6, v0, :cond_0

    aget v0, p2, v6

    const/16 v1, 0x4f

    invoke-direct {p0, v6, v0, v1}, Lorg/joni/AsmCompilerSupport;->buildArray(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb5

    iget-object v2, p0, Lorg/joni/AsmCompilerSupport;->factoryName:Ljava/lang/String;

    const-string v3, "[I"

    invoke-interface {v0, v1, v2, p1, v3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private loadInt(Lorg/objectweb/asm/MethodVisitor;I)V
    .locals 1
    .param p1, "mv"    # Lorg/objectweb/asm/MethodVisitor;
    .param p2, "value"    # I

    .prologue
    .line 257
    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    .line 258
    add-int/lit8 v0, p2, 0x3

    invoke-interface {p1, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 266
    :goto_0
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x6

    if-lt p2, v0, :cond_1

    const/16 v0, 0x7f

    if-le p2, v0, :cond_2

    :cond_1
    const/16 v0, -0x80

    if-lt p2, v0, :cond_3

    const/4 v0, -0x2

    if-gt p2, v0, :cond_3

    .line 260
    :cond_2
    const/16 v0, 0x10

    invoke-interface {p1, v0, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_0

    .line 261
    :cond_3
    const/16 v0, 0x80

    if-lt p2, v0, :cond_4

    const/16 v0, 0x7fff

    if-le p2, v0, :cond_5

    :cond_4
    const/16 v0, -0x8000

    if-lt p2, v0, :cond_6

    const/16 v0, -0x81

    if-gt p2, v0, :cond_6

    .line 262
    :cond_5
    const/16 v0, 0x11

    invoke-interface {p1, v0, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_0

    .line 264
    :cond_6
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, v0}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected final aload(I)V
    .locals 2
    .param p1, "var"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->match:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x19

    invoke-interface {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 172
    return-void
.end method

.method protected final astore(I)V
    .locals 2
    .param p1, "var"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->match:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x3a

    invoke-interface {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 176
    return-void
.end method

.method protected final installBitSet([I)Ljava/lang/String;
    .locals 3
    .param p1, "arr"    # [I

    .prologue
    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/AsmCompilerSupport;->bitsets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/joni/AsmCompilerSupport;->bitsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "bitsetName":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lorg/joni/AsmCompilerSupport;->installArray(Ljava/lang/String;[I)V

    .line 228
    return-object v0
.end method

.method protected final installCodeRange([I)Ljava/lang/String;
    .locals 3
    .param p1, "arr"    # [I

    .prologue
    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/AsmCompilerSupport;->ranges:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/joni/AsmCompilerSupport;->ranges:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "coreRangeName":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lorg/joni/AsmCompilerSupport;->installArray(Ljava/lang/String;[I)V

    .line 222
    return-object v0
.end method

.method protected final installTemplate([BII)Ljava/lang/String;
    .locals 3
    .param p1, "arr"    # [B
    .param p2, "p"    # I
    .param p3, "length"    # I

    .prologue
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "template"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/AsmCompilerSupport;->templates:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/joni/AsmCompilerSupport;->templates:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "templateName":Ljava/lang/String;
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/joni/AsmCompilerSupport;->installArray(Ljava/lang/String;[BII)V

    .line 216
    return-object v0
.end method

.method protected final load(I)V
    .locals 2
    .param p1, "var"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->match:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x15

    invoke-interface {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 184
    return-void
.end method

.method protected final load(Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v0, "I"

    invoke-virtual {p0, p1, v0}, Lorg/joni/AsmCompilerSupport;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method protected final load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "singature"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/joni/AsmCompilerSupport;->loadThis()V

    .line 197
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->match:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb4

    iget-object v2, p0, Lorg/joni/AsmCompilerSupport;->machineName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method protected final loadThis()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->match:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 180
    return-void
.end method

.method protected final move(II)V
    .locals 0
    .param p1, "to"    # I
    .param p2, "from"    # I

    .prologue
    .line 191
    invoke-virtual {p0, p2}, Lorg/joni/AsmCompilerSupport;->load(I)V

    .line 192
    invoke-virtual {p0, p1}, Lorg/joni/AsmCompilerSupport;->store(I)V

    .line 193
    return-void
.end method

.method protected final prepareFactory()V
    .locals 12

    .prologue
    const/16 v11, 0x19

    const/16 v10, 0x15

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 64
    new-instance v0, Lorg/objectweb/asm/ClassWriter;

    invoke-direct {v0, v9}, Lorg/objectweb/asm/ClassWriter;-><init>(I)V

    iput-object v0, p0, Lorg/joni/AsmCompilerSupport;->factory:Lorg/objectweb/asm/ClassWriter;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org/joni/MatcherFactory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lorg/joni/AsmCompilerSupport;->REG_NUM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryName:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factory:Lorg/objectweb/asm/ClassWriter;

    const/16 v1, 0x30

    const/16 v2, 0x11

    iget-object v3, p0, Lorg/joni/AsmCompilerSupport;->factoryName:Ljava/lang/String;

    const-string v5, "org/joni/MatcherFactory"

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factory:Lorg/objectweb/asm/ClassWriter;

    const/16 v1, 0x1000

    const-string v2, "create"

    const-string v3, "(Lorg/joni/Regex;[BII)Lorg/joni/Matcher;"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v7

    .line 70
    .local v7, "create":Lorg/objectweb/asm/MethodVisitor;
    const/16 v0, 0xbb

    iget-object v1, p0, Lorg/joni/AsmCompilerSupport;->machineName:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 71
    const/16 v0, 0x59

    invoke-interface {v7, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 72
    invoke-interface {v7, v11, v9}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 73
    const/4 v0, 0x2

    invoke-interface {v7, v11, v0}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 74
    const/4 v0, 0x3

    invoke-interface {v7, v10, v0}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 75
    const/4 v0, 0x4

    invoke-interface {v7, v10, v0}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 76
    const/16 v0, 0xb7

    iget-object v1, p0, Lorg/joni/AsmCompilerSupport;->machineName:Ljava/lang/String;

    const-string v2, "<init>"

    const-string v3, "(Lorg/joni/Regex;[BII)V"

    invoke-interface {v7, v0, v1, v2, v3}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/16 v0, 0xb0

    invoke-interface {v7, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 78
    invoke-interface {v7, v8, v8}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 80
    invoke-interface {v7}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 81
    return-void
.end method

.method protected final prepareFactoryInit()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 84
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factory:Lorg/objectweb/asm/ClassWriter;

    const/4 v1, 0x1

    const-string v2, "<init>"

    const-string v3, "()V"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    iput-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    .line 85
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 86
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb7

    const-string v2, "org/joni/MatcherFactory"

    const-string v3, "<init>"

    const-string v4, "()V"

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected final prepareMachine()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lorg/objectweb/asm/ClassWriter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/ClassWriter;-><init>(I)V

    iput-object v0, p0, Lorg/joni/AsmCompilerSupport;->machine:Lorg/objectweb/asm/ClassWriter;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org/joni/NativeMachine"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lorg/joni/AsmCompilerSupport;->REG_NUM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method protected final prepareMachineInit()V
    .locals 10

    .prologue
    const/16 v9, 0x15

    const/4 v8, 0x4

    const/16 v7, 0x19

    const/4 v4, 0x0

    .line 102
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machine:Lorg/objectweb/asm/ClassWriter;

    const/16 v1, 0x30

    const/16 v2, 0x11

    iget-object v3, p0, Lorg/joni/AsmCompilerSupport;->machineName:Ljava/lang/String;

    const-string v5, "org/joni/NativeMachine"

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machine:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "<init>"

    const-string v3, "(Lorg/joni/Regex;[BII)V"

    move v1, v8

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    iput-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineInit:Lorg/objectweb/asm/MethodVisitor;

    .line 104
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineInit:Lorg/objectweb/asm/MethodVisitor;

    const/4 v1, 0x0

    invoke-interface {v0, v7, v1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 105
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineInit:Lorg/objectweb/asm/MethodVisitor;

    const/4 v1, 0x1

    invoke-interface {v0, v7, v1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 106
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineInit:Lorg/objectweb/asm/MethodVisitor;

    const/4 v1, 0x2

    invoke-interface {v0, v7, v1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 107
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineInit:Lorg/objectweb/asm/MethodVisitor;

    const/4 v1, 0x3

    invoke-interface {v0, v9, v1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 108
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineInit:Lorg/objectweb/asm/MethodVisitor;

    invoke-interface {v0, v9, v8}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 109
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineInit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb7

    const-string v2, "org/joni/NativeMachine"

    const-string v3, "<init>"

    const-string v4, "(Lorg/joni/Regex;[BII)V"

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method protected final prepareMachineMatch()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 129
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machine:Lorg/objectweb/asm/ClassWriter;

    const/16 v1, 0x1000

    const-string v2, "matchAt"

    const-string v3, "(III)I"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    iput-object v0, p0, Lorg/joni/AsmCompilerSupport;->match:Lorg/objectweb/asm/MethodVisitor;

    .line 130
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/joni/AsmCompilerSupport;->move(II)V

    .line 131
    const-string v0, "bytes"

    const-string v1, "[B"

    invoke-virtual {p0, v0, v1}, Lorg/joni/AsmCompilerSupport;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/joni/AsmCompilerSupport;->astore(I)V

    .line 133
    return-void
.end method

.method protected final setupClasses()V
    .locals 8

    .prologue
    const/16 v7, 0x2f

    const/16 v6, 0x2e

    .line 144
    iget-object v4, p0, Lorg/joni/AsmCompilerSupport;->factory:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v4}, Lorg/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v2

    .line 145
    .local v2, "factoryCode":[B
    iget-object v4, p0, Lorg/joni/AsmCompilerSupport;->machine:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v4}, Lorg/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v3

    .line 161
    .local v3, "machineCode":[B
    sget-object v4, Lorg/joni/AsmCompilerSupport;->loader:Lorg/joni/AsmCompilerSupport$DummyClassLoader;

    iget-object v5, p0, Lorg/joni/AsmCompilerSupport;->machineName:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/joni/AsmCompilerSupport$DummyClassLoader;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    .line 162
    sget-object v4, Lorg/joni/AsmCompilerSupport;->loader:Lorg/joni/AsmCompilerSupport$DummyClassLoader;

    iget-object v5, p0, Lorg/joni/AsmCompilerSupport;->factoryName:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lorg/joni/AsmCompilerSupport$DummyClassLoader;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v0

    .line 164
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v5, p0, Lorg/joni/AsmCompilerSupport;->regex:Lorg/joni/Regex;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/joni/MatcherFactory;

    iput-object v4, v5, Lorg/joni/Regex;->factory:Lorg/joni/MatcherFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/joni/Config;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method protected final setupFactoryInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb1

    invoke-interface {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 91
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    invoke-interface {v0, v2, v2}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 93
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->factoryInit:Lorg/objectweb/asm/MethodVisitor;

    invoke-interface {v0}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 94
    return-void
.end method

.method protected final setupMachineInit()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x19

    const/4 v6, 0x0

    .line 113
    iget v0, p0, Lorg/joni/AsmCompilerSupport;->bitsets:I

    iget v1, p0, Lorg/joni/AsmCompilerSupport;->ranges:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/joni/AsmCompilerSupport;->templates:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machine:Lorg/objectweb/asm/ClassWriter;

    const/16 v1, 0x12

    const-string v2, "factory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lorg/joni/AsmCompilerSupport;->factoryName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    .line 115
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineInit:Lorg/objectweb/asm/MethodVisitor;

    invoke-interface {v0, v7, v6}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 116
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineInit:Lorg/objectweb/asm/MethodVisitor;

    const/4 v1, 0x1

    invoke-interface {v0, v7, v1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 117
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineInit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb4

    const-string v2, "org/joni/Regex"

    const-string v3, "factory"

    const-string v4, "Lorg/joni/MatcherFactory;"

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineInit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xc0

    iget-object v2, p0, Lorg/joni/AsmCompilerSupport;->factoryName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineInit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb5

    iget-object v2, p0, Lorg/joni/AsmCompilerSupport;->machineName:Ljava/lang/String;

    const-string v3, "factory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/joni/AsmCompilerSupport;->factoryName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineInit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb1

    invoke-interface {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 123
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineInit:Lorg/objectweb/asm/MethodVisitor;

    invoke-interface {v0, v6, v6}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 125
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->machineInit:Lorg/objectweb/asm/MethodVisitor;

    invoke-interface {v0}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 126
    return-void
.end method

.method protected final setupMachineMatch()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->match:Lorg/objectweb/asm/MethodVisitor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 137
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->match:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xac

    invoke-interface {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 139
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->match:Lorg/objectweb/asm/MethodVisitor;

    iget v1, p0, Lorg/joni/AsmCompilerSupport;->maxStack:I

    iget v2, p0, Lorg/joni/AsmCompilerSupport;->maxVars:I

    invoke-interface {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 140
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->match:Lorg/objectweb/asm/MethodVisitor;

    invoke-interface {v0}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 141
    return-void
.end method

.method protected final store(I)V
    .locals 2
    .param p1, "var"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->match:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x36

    invoke-interface {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 188
    return-void
.end method

.method protected final store(Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string v0, "I"

    invoke-virtual {p0, p1, v0}, Lorg/joni/AsmCompilerSupport;->store(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method protected final store(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "singature"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/joni/AsmCompilerSupport;->loadThis()V

    .line 206
    iget-object v0, p0, Lorg/joni/AsmCompilerSupport;->match:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb5

    iget-object v2, p0, Lorg/joni/AsmCompilerSupport;->machineName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method
