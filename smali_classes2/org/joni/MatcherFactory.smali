.class public abstract Lorg/joni/MatcherFactory;
.super Ljava/lang/Object;
.source "MatcherFactory.java"


# static fields
.field static final DEFAULT:Lorg/joni/MatcherFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/joni/MatcherFactory$1;

    invoke-direct {v0}, Lorg/joni/MatcherFactory$1;-><init>()V

    sput-object v0, Lorg/joni/MatcherFactory;->DEFAULT:Lorg/joni/MatcherFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract create(Lorg/joni/Regex;[BII)Lorg/joni/Matcher;
.end method
