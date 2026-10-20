###### Class com.google.common.base.CaseFormat (com.google.common.base.CaseFormat)
.class public abstract enum Lcom/google/common/base/CaseFormat;
.super Ljava/lang/Enum;
.source "CaseFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/CaseFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/base/CaseFormat;

.field public static final enum b:Lcom/google/common/base/CaseFormat;

.field public static final enum c:Lcom/google/common/base/CaseFormat;

.field public static final enum d:Lcom/google/common/base/CaseFormat;

.field public static final enum e:Lcom/google/common/base/CaseFormat;

.field private static final synthetic f:[Lcom/google/common/base/CaseFormat;


# instance fields
.field private final g:Lcom/google/common/base/CharMatcher;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/google/common/base/CaseFormat$a;

    const/16 v1, 0x2d

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    const-string v2, "LOWER_HYPHEN"

    const/4 v3, 0x0

    const-string v4, "-"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/common/base/CaseFormat$a;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->a:Lcom/google/common/base/CaseFormat;

    new-instance v0, Lcom/google/common/base/CaseFormat$b;

    const/16 v1, 0x5f

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    const-string v3, "LOWER_UNDERSCORE"

    const/4 v4, 0x1

    const-string v5, "_"

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/google/common/base/CaseFormat$b;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->b:Lcom/google/common/base/CaseFormat;

    new-instance v0, Lcom/google/common/base/CaseFormat$c;

    const/16 v2, 0x41

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v4

    const-string v6, "LOWER_CAMEL"

    const/4 v7, 0x2

    const-string v8, ""

    invoke-direct {v0, v6, v7, v4, v8}, Lcom/google/common/base/CaseFormat$c;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->c:Lcom/google/common/base/CaseFormat;

    new-instance v0, Lcom/google/common/base/CaseFormat$d;

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    const-string v3, "UPPER_CAMEL"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v2, v8}, Lcom/google/common/base/CaseFormat$d;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->d:Lcom/google/common/base/CaseFormat;

    new-instance v0, Lcom/google/common/base/CaseFormat$e;

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    const-string v2, "UPPER_UNDERSCORE"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1, v5}, Lcom/google/common/base/CaseFormat$e;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->e:Lcom/google/common/base/CaseFormat;

    invoke-static {}, Lcom/google/common/base/CaseFormat;->e()[Lcom/google/common/base/CaseFormat;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CaseFormat;->f:[Lcom/google/common/base/CaseFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/CharMatcher;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/common/base/CaseFormat;->g:Lcom/google/common/base/CharMatcher;

    iput-object p4, p0, Lcom/google/common/base/CaseFormat;->h:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;Lcom/google/common/base/CaseFormat$a;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/base/CaseFormat;
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/base/CaseFormat;

    sget-object v1, Lcom/google/common/base/CaseFormat;->a:Lcom/google/common/base/CaseFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/CaseFormat;->b:Lcom/google/common/base/CaseFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/CaseFormat;->c:Lcom/google/common/base/CaseFormat;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/CaseFormat;->d:Lcom/google/common/base/CaseFormat;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/CaseFormat;->e:Lcom/google/common/base/CaseFormat;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/CaseFormat;
    .registers 2

    const-class v0, Lcom/google/common/base/CaseFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/CaseFormat;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/CaseFormat;
    .registers 1

    sget-object v0, Lcom/google/common/base/CaseFormat;->f:[Lcom/google/common/base/CaseFormat;

    invoke-virtual {v0}, [Lcom/google/common/base/CaseFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/CaseFormat;

    return-object v0
.end method
