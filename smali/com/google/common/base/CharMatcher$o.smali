###### Class com.google.common.base.CharMatcher.o (com.google.common.base.CharMatcher$o)
.class final Lcom/google/common/base/CharMatcher$o;
.super Lcom/google/common/base/CharMatcher$t;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "o"
.end annotation


# static fields
.field static final b:Lcom/google/common/base/CharMatcher$o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/CharMatcher$o;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$o;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$o;->b:Lcom/google/common/base/CharMatcher$o;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "CharMatcher.javaIsoControl()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public h(C)Z
    .registers 3

    const/16 v0, 0x1f

    if-le p1, v0, :cond_f

    const/16 v0, 0x7f

    if-lt p1, v0, :cond_d

    const/16 v0, 0x9f

    if-gt p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method
