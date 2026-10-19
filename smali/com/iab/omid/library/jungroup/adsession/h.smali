###### Class com.iab.omid.library.jungroup.adsession.h (com.iab.omid.library.jungroup.adsession.h)
.class public final enum Lcom/iab/omid/library/jungroup/adsession/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/jungroup/adsession/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/iab/omid/library/jungroup/adsession/h;

.field public static final enum c:Lcom/iab/omid/library/jungroup/adsession/h;

.field public static final synthetic d:[Lcom/iab/omid/library/jungroup/adsession/h;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/iab/omid/library/jungroup/adsession/h;

    const-string v1, "DEFINED_BY_JAVASCRIPT"

    const-string v2, "definedByJavaScript"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/iab/omid/library/jungroup/adsession/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/iab/omid/library/jungroup/adsession/h;->b:Lcom/iab/omid/library/jungroup/adsession/h;

    new-instance v1, Lcom/iab/omid/library/jungroup/adsession/h;

    const-string v2, "UNSPECIFIED"

    const-string v4, "unspecified"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v5}, Lcom/iab/omid/library/jungroup/adsession/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/iab/omid/library/jungroup/adsession/h;

    const-string v4, "LOADED"

    const-string v6, "loaded"

    const/4 v7, 0x2

    invoke-direct {v2, v4, v6, v7}, Lcom/iab/omid/library/jungroup/adsession/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v4, Lcom/iab/omid/library/jungroup/adsession/h;

    const-string v6, "BEGIN_TO_RENDER"

    const-string v8, "beginToRender"

    const/4 v9, 0x3

    invoke-direct {v4, v6, v8, v9}, Lcom/iab/omid/library/jungroup/adsession/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Lcom/iab/omid/library/jungroup/adsession/h;->c:Lcom/iab/omid/library/jungroup/adsession/h;

    new-instance v6, Lcom/iab/omid/library/jungroup/adsession/h;

    const-string v8, "ONE_PIXEL"

    const-string v10, "onePixel"

    const/4 v11, 0x4

    invoke-direct {v6, v8, v10, v11}, Lcom/iab/omid/library/jungroup/adsession/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v8, Lcom/iab/omid/library/jungroup/adsession/h;

    const-string v10, "VIEWABLE"

    const-string v12, "viewable"

    const/4 v13, 0x5

    invoke-direct {v8, v10, v12, v13}, Lcom/iab/omid/library/jungroup/adsession/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v10, Lcom/iab/omid/library/jungroup/adsession/h;

    const-string v12, "AUDIBLE"

    const-string v14, "audible"

    const/4 v15, 0x6

    invoke-direct {v10, v12, v14, v15}, Lcom/iab/omid/library/jungroup/adsession/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v12, Lcom/iab/omid/library/jungroup/adsession/h;

    const-string v14, "OTHER"

    const-string v15, "other"

    const/4 v13, 0x7

    invoke-direct {v12, v14, v15, v13}, Lcom/iab/omid/library/jungroup/adsession/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v14, 0x8

    new-array v14, v14, [Lcom/iab/omid/library/jungroup/adsession/h;

    aput-object v0, v14, v3

    aput-object v1, v14, v5

    aput-object v2, v14, v7

    aput-object v4, v14, v9

    aput-object v6, v14, v11

    const/4 v0, 0x5

    aput-object v8, v14, v0

    const/4 v0, 0x6

    aput-object v10, v14, v0

    aput-object v12, v14, v13

    sput-object v14, Lcom/iab/omid/library/jungroup/adsession/h;->d:[Lcom/iab/omid/library/jungroup/adsession/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/iab/omid/library/jungroup/adsession/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/jungroup/adsession/h;
    .registers 2

    const-class v0, Lcom/iab/omid/library/jungroup/adsession/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/jungroup/adsession/h;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/jungroup/adsession/h;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/jungroup/adsession/h;->d:[Lcom/iab/omid/library/jungroup/adsession/h;

    invoke-virtual {v0}, [Lcom/iab/omid/library/jungroup/adsession/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/jungroup/adsession/h;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/h;->a:Ljava/lang/String;

    return-object v0
.end method
