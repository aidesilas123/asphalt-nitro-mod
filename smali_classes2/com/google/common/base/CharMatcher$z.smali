###### Class com.google.common.base.CharMatcher.z (com.google.common.base.CharMatcher$z)
.class final Lcom/google/common/base/CharMatcher$z;
.super Lcom/google/common/base/CharMatcher$y;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "z"
.end annotation


# static fields
.field static final d:Lcom/google/common/base/CharMatcher$z;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/CharMatcher$z;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$z;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$z;->d:Lcom/google/common/base/CharMatcher$z;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const-string v0, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "CharMatcher.singleWidth()"

    invoke-direct {p0, v2, v0, v1}, Lcom/google/common/base/CharMatcher$y;-><init>(Ljava/lang/String;[C[C)V

    return-void
.end method
