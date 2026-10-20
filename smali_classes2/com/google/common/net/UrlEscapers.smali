###### Class com.google.common.net.UrlEscapers (com.google.common.net.UrlEscapers)
.class public final Lcom/google/common/net/UrlEscapers;
.super Ljava/lang/Object;
.source "UrlEscapers.java"


# static fields
.field private static final a:Lcom/google/common/escape/d;

.field private static final b:Lcom/google/common/escape/d;

.field private static final c:Lcom/google/common/escape/d;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/net/c;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/net/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/net/UrlEscapers;->a:Lcom/google/common/escape/d;

    new-instance v0, Lcom/google/common/net/c;

    const-string v1, "-._~!$\'()*,;&=@:+"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/net/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/net/UrlEscapers;->b:Lcom/google/common/escape/d;

    new-instance v0, Lcom/google/common/net/c;

    const-string v1, "-._~!$\'()*,;&=@:+/?"

    invoke-direct {v0, v1, v2}, Lcom/google/common/net/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/net/UrlEscapers;->c:Lcom/google/common/escape/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static urlFormParameterEscaper()Lcom/google/common/escape/d;
    .registers 1

    sget-object v0, Lcom/google/common/net/UrlEscapers;->a:Lcom/google/common/escape/d;

    return-object v0
.end method

.method public static urlFragmentEscaper()Lcom/google/common/escape/d;
    .registers 1

    sget-object v0, Lcom/google/common/net/UrlEscapers;->c:Lcom/google/common/escape/d;

    return-object v0
.end method

.method public static urlPathSegmentEscaper()Lcom/google/common/escape/d;
    .registers 1

    sget-object v0, Lcom/google/common/net/UrlEscapers;->b:Lcom/google/common/escape/d;

    return-object v0
.end method
