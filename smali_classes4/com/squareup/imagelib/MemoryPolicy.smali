###### Class com.squareup.imagelib.MemoryPolicy (com.squareup.imagelib.MemoryPolicy)
.class public final enum Lcom/squareup/imagelib/MemoryPolicy;
.super Ljava/lang/Enum;
.source "MemoryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/imagelib/MemoryPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/squareup/imagelib/MemoryPolicy;

.field public static final enum b:Lcom/squareup/imagelib/MemoryPolicy;

.field private static final synthetic c:[Lcom/squareup/imagelib/MemoryPolicy;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/squareup/imagelib/MemoryPolicy;

    const-string v1, "NO_CACHE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/imagelib/MemoryPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/imagelib/MemoryPolicy;->a:Lcom/squareup/imagelib/MemoryPolicy;

    new-instance v0, Lcom/squareup/imagelib/MemoryPolicy;

    const-string v1, "NO_STORE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/squareup/imagelib/MemoryPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/imagelib/MemoryPolicy;->b:Lcom/squareup/imagelib/MemoryPolicy;

    invoke-static {}, Lcom/squareup/imagelib/MemoryPolicy;->e()[Lcom/squareup/imagelib/MemoryPolicy;

    move-result-object v0

    sput-object v0, Lcom/squareup/imagelib/MemoryPolicy;->c:[Lcom/squareup/imagelib/MemoryPolicy;

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

    iput p3, p0, Lcom/squareup/imagelib/MemoryPolicy;->d:I

    return-void
.end method

.method private static synthetic e()[Lcom/squareup/imagelib/MemoryPolicy;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/squareup/imagelib/MemoryPolicy;

    sget-object v1, Lcom/squareup/imagelib/MemoryPolicy;->a:Lcom/squareup/imagelib/MemoryPolicy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/imagelib/MemoryPolicy;->b:Lcom/squareup/imagelib/MemoryPolicy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static f(I)Z
    .registers 2

    sget-object v0, Lcom/squareup/imagelib/MemoryPolicy;->a:Lcom/squareup/imagelib/MemoryPolicy;

    iget v0, v0, Lcom/squareup/imagelib/MemoryPolicy;->d:I

    and-int/2addr p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method static g(I)Z
    .registers 2

    sget-object v0, Lcom/squareup/imagelib/MemoryPolicy;->b:Lcom/squareup/imagelib/MemoryPolicy;

    iget v0, v0, Lcom/squareup/imagelib/MemoryPolicy;->d:I

    and-int/2addr p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/imagelib/MemoryPolicy;
    .registers 2

    const-class v0, Lcom/squareup/imagelib/MemoryPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/imagelib/MemoryPolicy;

    return-object p0
.end method

.method public static values()[Lcom/squareup/imagelib/MemoryPolicy;
    .registers 1

    sget-object v0, Lcom/squareup/imagelib/MemoryPolicy;->c:[Lcom/squareup/imagelib/MemoryPolicy;

    invoke-virtual {v0}, [Lcom/squareup/imagelib/MemoryPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/imagelib/MemoryPolicy;

    return-object v0
.end method
