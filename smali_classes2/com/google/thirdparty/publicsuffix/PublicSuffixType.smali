###### Class com.google.thirdparty.publicsuffix.PublicSuffixType (com.google.thirdparty.publicsuffix.PublicSuffixType)
.class public final enum Lcom/google/thirdparty/publicsuffix/PublicSuffixType;
.super Ljava/lang/Enum;
.source "PublicSuffixType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

.field public static final enum b:Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

.field private static final synthetic c:[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;


# instance fields
.field private final d:C

.field private final e:C


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    const-string v1, "PRIVATE"

    const/4 v2, 0x0

    const/16 v3, 0x3a

    const/16 v4, 0x2c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;-><init>(Ljava/lang/String;ICC)V

    sput-object v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->a:Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    new-instance v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    const-string v1, "REGISTRY"

    const/4 v2, 0x1

    const/16 v3, 0x21

    const/16 v4, 0x3f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;-><init>(Ljava/lang/String;ICC)V

    sput-object v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->b:Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    invoke-static {}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->e()[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    move-result-object v0

    sput-object v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->c:[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICC)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CC)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-char p3, p0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->d:C

    iput-char p4, p0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->e:C

    return-void
.end method

.method private static synthetic e()[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    sget-object v1, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->a:Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->b:Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static f(C)Lcom/google/thirdparty/publicsuffix/PublicSuffixType;
    .registers 6

    invoke-static {}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->values()[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->g()C

    move-result v4

    if-eq v4, p0, :cond_1a

    invoke-virtual {v3}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->h()C

    move-result v4

    if-ne v4, p0, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    :goto_1a
    return-object v3

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No enum corresponding to given code: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/thirdparty/publicsuffix/PublicSuffixType;
    .registers 2

    const-class v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    return-object p0
.end method

.method public static values()[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;
    .registers 1

    sget-object v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->c:[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    invoke-virtual {v0}, [Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    return-object v0
.end method


# virtual methods
.method g()C
    .registers 2

    iget-char v0, p0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->d:C

    return v0
.end method

.method h()C
    .registers 2

    iget-char v0, p0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->e:C

    return v0
.end method
