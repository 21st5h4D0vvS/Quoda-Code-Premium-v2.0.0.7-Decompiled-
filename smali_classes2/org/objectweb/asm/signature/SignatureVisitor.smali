.class public interface abstract Lorg/objectweb/asm/signature/SignatureVisitor;
.super Ljava/lang/Object;


# static fields
.field public static final EXTENDS:C = '+'

.field public static final INSTANCEOF:C = '='

.field public static final SUPER:C = '-'


# virtual methods
.method public abstract visitArrayType()Lorg/objectweb/asm/signature/SignatureVisitor;
.end method

.method public abstract visitBaseType(C)V
.end method

.method public abstract visitClassBound()Lorg/objectweb/asm/signature/SignatureVisitor;
.end method

.method public abstract visitClassType(Ljava/lang/String;)V
.end method

.method public abstract visitEnd()V
.end method

.method public abstract visitExceptionType()Lorg/objectweb/asm/signature/SignatureVisitor;
.end method

.method public abstract visitFormalTypeParameter(Ljava/lang/String;)V
.end method

.method public abstract visitInnerClassType(Ljava/lang/String;)V
.end method

.method public abstract visitInterface()Lorg/objectweb/asm/signature/SignatureVisitor;
.end method

.method public abstract visitInterfaceBound()Lorg/objectweb/asm/signature/SignatureVisitor;
.end method

.method public abstract visitParameterType()Lorg/objectweb/asm/signature/SignatureVisitor;
.end method

.method public abstract visitReturnType()Lorg/objectweb/asm/signature/SignatureVisitor;
.end method

.method public abstract visitSuperclass()Lorg/objectweb/asm/signature/SignatureVisitor;
.end method

.method public abstract visitTypeArgument(C)Lorg/objectweb/asm/signature/SignatureVisitor;
.end method

.method public abstract visitTypeArgument()V
.end method

.method public abstract visitTypeVariable(Ljava/lang/String;)V
.end method
