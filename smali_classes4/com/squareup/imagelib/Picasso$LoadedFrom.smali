###### Class com.squareup.imagelib.Picasso.LoadedFrom (com.squareup.imagelib.Picasso$LoadedFrom)
.class public final enum Lcom/squareup/imagelib/Picasso$LoadedFrom;
.super Ljava/lang/Enum;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadedFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/imagelib/Picasso$LoadedFrom;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/squareup/imagelib/Picasso$LoadedFrom;

.field public static final enum b:Lcom/squareup/imagelib/Picasso$LoadedFrom;

.field public static final enum c:Lcom/squareup/imagelib/Picasso$LoadedFrom;

.field private static final synthetic d:[Lcom/squareup/imagelib/Picasso$LoadedFrom;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;

    const-string v1, "MEMORY"

    const/4 v2, 0x0

    const v3, -0xff0100

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/imagelib/Picasso$LoadedFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;->a:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    new-instance v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;

    const-string v1, "DISK"

    const/4 v2, 0x1

    const v3, -0xffff01

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/imagelib/Picasso$LoadedFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;->b:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    new-instance v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;

    const-string v1, "NETWORK"

    const/4 v2, 0x2

    const/high16 v3, -0x10000

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/imagelib/Picasso$LoadedFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;->c:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    invoke-static {}, Lcom/squareup/imagelib/Picasso$LoadedFrom;->e()[Lcom/squareup/imagelib/Picasso$LoadedFrom;

    move-result-object v0

    sput-object v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;->d:[Lcom/squareup/imagelib/Picasso$LoadedFrom;

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

    iput p3, p0, Lcom/squareup/imagelib/Picasso$LoadedFrom;->e:I

    return-void
.end method

.method private static synthetic e()[Lcom/squareup/imagelib/Picasso$LoadedFrom;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/squareup/imagelib/Picasso$LoadedFrom;

    sget-object v1, Lcom/squareup/imagelib/Picasso$LoadedFrom;->a:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/imagelib/Picasso$LoadedFrom;->b:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/imagelib/Picasso$LoadedFrom;->c:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/imagelib/Picasso$LoadedFrom;
    .registers 2

    const-class v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/imagelib/Picasso$LoadedFrom;

    return-object p0
.end method

.method public static values()[Lcom/squareup/imagelib/Picasso$LoadedFrom;
    .registers 1

    sget-object v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;->d:[Lcom/squareup/imagelib/Picasso$LoadedFrom;

    invoke-virtual {v0}, [Lcom/squareup/imagelib/Picasso$LoadedFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/imagelib/Picasso$LoadedFrom;

    return-object v0
.end method
