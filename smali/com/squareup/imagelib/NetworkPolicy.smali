###### Class com.squareup.imagelib.NetworkPolicy (com.squareup.imagelib.NetworkPolicy)
.class public final enum Lcom/squareup/imagelib/NetworkPolicy;
.super Ljava/lang/Enum;
.source "NetworkPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/imagelib/NetworkPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/squareup/imagelib/NetworkPolicy;

.field public static final enum b:Lcom/squareup/imagelib/NetworkPolicy;

.field public static final enum c:Lcom/squareup/imagelib/NetworkPolicy;

.field private static final synthetic d:[Lcom/squareup/imagelib/NetworkPolicy;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/squareup/imagelib/NetworkPolicy;

    const-string v1, "NO_CACHE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/imagelib/NetworkPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/imagelib/NetworkPolicy;->a:Lcom/squareup/imagelib/NetworkPolicy;

    new-instance v0, Lcom/squareup/imagelib/NetworkPolicy;

    const-string v1, "NO_STORE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/squareup/imagelib/NetworkPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/imagelib/NetworkPolicy;->b:Lcom/squareup/imagelib/NetworkPolicy;

    new-instance v0, Lcom/squareup/imagelib/NetworkPolicy;

    const-string v1, "OFFLINE"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/imagelib/NetworkPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/imagelib/NetworkPolicy;->c:Lcom/squareup/imagelib/NetworkPolicy;

    invoke-static {}, Lcom/squareup/imagelib/NetworkPolicy;->e()[Lcom/squareup/imagelib/NetworkPolicy;

    move-result-object v0

    sput-object v0, Lcom/squareup/imagelib/NetworkPolicy;->d:[Lcom/squareup/imagelib/NetworkPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/squareup/imagelib/NetworkPolicy;->e:I

    return-void
.end method

.method private static synthetic e()[Lcom/squareup/imagelib/NetworkPolicy;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/squareup/imagelib/NetworkPolicy;

    sget-object v1, Lcom/squareup/imagelib/NetworkPolicy;->a:Lcom/squareup/imagelib/NetworkPolicy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/imagelib/NetworkPolicy;->b:Lcom/squareup/imagelib/NetworkPolicy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/imagelib/NetworkPolicy;->c:Lcom/squareup/imagelib/NetworkPolicy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static isOfflineOnly(I)Z
    .registers 2

    sget-object v0, Lcom/squareup/imagelib/NetworkPolicy;->c:Lcom/squareup/imagelib/NetworkPolicy;

    iget v0, v0, Lcom/squareup/imagelib/NetworkPolicy;->e:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static shouldReadFromDiskCache(I)Z
    .registers 2

    sget-object v0, Lcom/squareup/imagelib/NetworkPolicy;->a:Lcom/squareup/imagelib/NetworkPolicy;

    iget v0, v0, Lcom/squareup/imagelib/NetworkPolicy;->e:I

    and-int/2addr p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static shouldWriteToDiskCache(I)Z
    .registers 2

    sget-object v0, Lcom/squareup/imagelib/NetworkPolicy;->b:Lcom/squareup/imagelib/NetworkPolicy;

    iget v0, v0, Lcom/squareup/imagelib/NetworkPolicy;->e:I

    and-int/2addr p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/imagelib/NetworkPolicy;
    .registers 2

    const-class v0, Lcom/squareup/imagelib/NetworkPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/imagelib/NetworkPolicy;

    return-object p0
.end method

.method public static values()[Lcom/squareup/imagelib/NetworkPolicy;
    .registers 1

    sget-object v0, Lcom/squareup/imagelib/NetworkPolicy;->d:[Lcom/squareup/imagelib/NetworkPolicy;

    invoke-virtual {v0}, [Lcom/squareup/imagelib/NetworkPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/imagelib/NetworkPolicy;

    return-object v0
.end method
