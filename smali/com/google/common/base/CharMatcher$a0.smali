###### Class com.google.common.base.CharMatcher.a0 (com.google.common.base.CharMatcher$a0)
.class final Lcom/google/common/base/CharMatcher$a0;
.super Lcom/google/common/base/CharMatcher$t;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a0"
.end annotation


# static fields
.field static final b:I

.field static final c:Lcom/google/common/base/CharMatcher$a0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    sput v0, Lcom/google/common/base/CharMatcher$a0;->b:I

    new-instance v0, Lcom/google/common/base/CharMatcher$a0;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$a0;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$a0;->c:Lcom/google/common/base/CharMatcher$a0;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const-string v0, "CharMatcher.whitespace()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public h(C)Z
    .registers 4

    const v0, 0x6449bf0a

    mul-int v0, v0, p1

    sget v1, Lcom/google/common/base/CharMatcher$a0;->b:I

    ushr-int/2addr v0, v1

    const-string v1, "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\u000c\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method
