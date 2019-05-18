.class public interface abstract Lorg/joni/WarnCallback;
.super Ljava/lang/Object;
.source "WarnCallback.java"


# static fields
.field public static final DEFAULT:Lorg/joni/WarnCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/joni/WarnCallback$1;

    invoke-direct {v0}, Lorg/joni/WarnCallback$1;-><init>()V

    sput-object v0, Lorg/joni/WarnCallback;->DEFAULT:Lorg/joni/WarnCallback;

    return-void
.end method


# virtual methods
.method public abstract warn(Ljava/lang/String;)V
.end method
