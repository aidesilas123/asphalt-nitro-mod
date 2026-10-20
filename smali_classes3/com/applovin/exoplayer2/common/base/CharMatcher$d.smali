###### Class com.applovin.exoplayer2.common.base.CharMatcher.d (com.applovin.exoplayer2.common.base.CharMatcher$d)
.class final Lcom/applovin/exoplayer2/common/base/CharMatcher$d;
.super Lcom/applovin/exoplayer2/common/base/CharMatcher$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field static final nM:Lcom/applovin/exoplayer2/common/base/CharMatcher$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$d;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/common/base/CharMatcher$d;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$d;->nM:Lcom/applovin/exoplayer2/common/base/CharMatcher$d;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const-string v0, "CharMatcher.ascii()"

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/common/base/CharMatcher$t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .registers 3

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method
