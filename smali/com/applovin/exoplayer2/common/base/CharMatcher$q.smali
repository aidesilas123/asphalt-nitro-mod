###### Class com.applovin.exoplayer2.common.base.CharMatcher.q (com.applovin.exoplayer2.common.base.CharMatcher$q)
.class final Lcom/applovin/exoplayer2/common/base/CharMatcher$q;
.super Lcom/applovin/exoplayer2/common/base/CharMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "q"
.end annotation


# static fields
.field static final nZ:Lcom/applovin/exoplayer2/common/base/CharMatcher$q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$q;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/common/base/CharMatcher$q;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$q;->nZ:Lcom/applovin/exoplayer2/common/base/CharMatcher$q;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .registers 2

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "CharMatcher.javaLetterOrDigit()"

    return-object v0
.end method
