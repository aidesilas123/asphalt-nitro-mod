###### Class com.squareup.imagelib.MediaStoreRequestHandler.PicassoKind (com.squareup.imagelib.MediaStoreRequestHandler$PicassoKind)
.class final enum Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;
.super Ljava/lang/Enum;
.source "MediaStoreRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/MediaStoreRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PicassoKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

.field public static final enum b:Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

.field public static final enum c:Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

.field private static final synthetic d:[Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;


# instance fields
.field final e:I

.field final f:I

.field final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v6, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    const-string v1, "MICRO"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x60

    const/16 v5, 0x60

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->a:Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    new-instance v0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    const-string v8, "MINI"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/16 v11, 0x200

    const/16 v12, 0x180

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->b:Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    new-instance v0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    const-string v2, "FULL"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->c:Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    invoke-static {}, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->e()[Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    move-result-object v0

    sput-object v0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->d:[Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->e:I

    iput p4, p0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->f:I

    iput p5, p0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->g:I

    return-void
.end method

.method private static synthetic e()[Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    sget-object v1, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->a:Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->b:Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->c:Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;
    .registers 2

    const-class v0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    return-object p0
.end method

.method public static values()[Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;
    .registers 1

    sget-object v0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->d:[Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    invoke-virtual {v0}, [Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    return-object v0
.end method
