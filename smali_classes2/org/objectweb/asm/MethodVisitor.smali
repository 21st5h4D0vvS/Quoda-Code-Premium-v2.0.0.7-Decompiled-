.class public interface abstract Lorg/objectweb/asm/MethodVisitor;
.super Ljava/lang/Object;


# virtual methods
.method public abstract visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
.end method

.method public abstract visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;
.end method

.method public abstract visitAttribute(Lorg/objectweb/asm/Attribute;)V
.end method

.method public abstract visitCode()V
.end method

.method public abstract visitEnd()V
.end method

.method public abstract visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
.end method

.method public abstract visitIincInsn(II)V
.end method

.method public abstract visitInsn(I)V
.end method

.method public abstract visitIntInsn(II)V
.end method

.method public abstract visitJumpInsn(ILorg/objectweb/asm/Label;)V
.end method

.method public abstract visitLabel(Lorg/objectweb/asm/Label;)V
.end method

.method public abstract visitLdcInsn(Ljava/lang/Object;)V
.end method

.method public abstract visitLineNumber(ILorg/objectweb/asm/Label;)V
.end method

.method public abstract visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
.end method

.method public abstract visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
.end method

.method public abstract visitMaxs(II)V
.end method

.method public abstract visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract visitMultiANewArrayInsn(Ljava/lang/String;I)V
.end method

.method public abstract visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
.end method

.method public abstract visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
.end method

.method public abstract visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
.end method

.method public abstract visitTypeInsn(ILjava/lang/String;)V
.end method

.method public abstract visitVarInsn(II)V
.end method
