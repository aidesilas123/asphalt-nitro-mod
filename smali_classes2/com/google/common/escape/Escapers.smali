###### Class com.google.common.escape.Escapers (com.google.common.escape.Escapers)
.class public final Lcom/google/common/escape/Escapers;
.super Ljava/lang/Object;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/escape/Escapers$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/escape/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/escape/Escapers$a;

    invoke-direct {v0}, Lcom/google/common/escape/Escapers$a;-><init>()V

    sput-object v0, Lcom/google/common/escape/Escapers;->a:Lcom/google/common/escape/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([C)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    move-object p0, v0

    :goto_a
    return-object p0
.end method

.method public static builder()Lcom/google/common/escape/Escapers$b;
    .registers 2

    new-instance v0, Lcom/google/common/escape/Escapers$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/escape/Escapers$b;-><init>(Lcom/google/common/escape/Escapers$a;)V

    return-object v0
.end method

.method public static computeReplacement(Lcom/google/common/escape/c;C)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/escape/c;->b(C)[C

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/escape/Escapers;->a([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static computeReplacement(Lcom/google/common/escape/f;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/escape/f;->c(I)[C

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/escape/Escapers;->a([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nullEscaper()Lcom/google/common/escape/d;
    .registers 1

    sget-object v0, Lcom/google/common/escape/Escapers;->a:Lcom/google/common/escape/d;

    return-object v0
.end method
