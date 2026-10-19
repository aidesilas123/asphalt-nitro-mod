###### Class com.applovin.exoplayer2.common.base.CharMatcher.aa (com.applovin.exoplayer2.common.base.CharMatcher$aa)
.class final Lcom/applovin/exoplayer2/common/base/CharMatcher$aa;
.super Lcom/applovin/exoplayer2/common/base/CharMatcher$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "aa"
.end annotation


# static fields
.field static final oi:I

.field static final oj:Lcom/applovin/exoplayer2/common/base/CharMatcher$aa;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    sput v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$aa;->oi:I

    new-instance v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$aa;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/common/base/CharMatcher$aa;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$aa;->oj:Lcom/applovin/exoplayer2/common/base/CharMatcher$aa;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const-string v0, "CharMatcher.whitespace()"

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/common/base/CharMatcher$t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .registers 4

    const v0, 0x6449bf0a

    mul-int v0, v0, p1

    sget v1, Lcom/applovin/exoplayer2/common/base/CharMatcher$aa;->oi:I

    ushr-int/2addr v0, v1

    const-string/jumbo v1, "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\u000c\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_12

    const-string/jumbo v1, "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\u000c\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method
