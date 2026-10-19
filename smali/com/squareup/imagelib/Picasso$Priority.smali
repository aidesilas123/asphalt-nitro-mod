###### Class com.squareup.imagelib.Picasso.Priority (com.squareup.imagelib.Picasso$Priority)
.class public final enum Lcom/squareup/imagelib/Picasso$Priority;
.super Ljava/lang/Enum;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/imagelib/Picasso$Priority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/squareup/imagelib/Picasso$Priority;

.field public static final enum b:Lcom/squareup/imagelib/Picasso$Priority;

.field public static final enum c:Lcom/squareup/imagelib/Picasso$Priority;

.field private static final synthetic d:[Lcom/squareup/imagelib/Picasso$Priority;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/squareup/imagelib/Picasso$Priority;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/squareup/imagelib/Picasso$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/imagelib/Picasso$Priority;->a:Lcom/squareup/imagelib/Picasso$Priority;

    new-instance v0, Lcom/squareup/imagelib/Picasso$Priority;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/squareup/imagelib/Picasso$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/imagelib/Picasso$Priority;->b:Lcom/squareup/imagelib/Picasso$Priority;

    new-instance v0, Lcom/squareup/imagelib/Picasso$Priority;

    const-string v1, "HIGH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/squareup/imagelib/Picasso$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/imagelib/Picasso$Priority;->c:Lcom/squareup/imagelib/Picasso$Priority;

    invoke-static {}, Lcom/squareup/imagelib/Picasso$Priority;->e()[Lcom/squareup/imagelib/Picasso$Priority;

    move-result-object v0

    sput-object v0, Lcom/squareup/imagelib/Picasso$Priority;->d:[Lcom/squareup/imagelib/Picasso$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/squareup/imagelib/Picasso$Priority;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/squareup/imagelib/Picasso$Priority;

    sget-object v1, Lcom/squareup/imagelib/Picasso$Priority;->a:Lcom/squareup/imagelib/Picasso$Priority;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/imagelib/Picasso$Priority;->b:Lcom/squareup/imagelib/Picasso$Priority;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/imagelib/Picasso$Priority;->c:Lcom/squareup/imagelib/Picasso$Priority;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/imagelib/Picasso$Priority;
    .registers 2

    const-class v0, Lcom/squareup/imagelib/Picasso$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/imagelib/Picasso$Priority;

    return-object p0
.end method

.method public static values()[Lcom/squareup/imagelib/Picasso$Priority;
    .registers 1

    sget-object v0, Lcom/squareup/imagelib/Picasso$Priority;->d:[Lcom/squareup/imagelib/Picasso$Priority;

    invoke-virtual {v0}, [Lcom/squareup/imagelib/Picasso$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/imagelib/Picasso$Priority;

    return-object v0
.end method
