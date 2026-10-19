###### Class com.iab.omid.library.jungroup.adsession.f (com.iab.omid.library.jungroup.adsession.f)
.class public final enum Lcom/iab/omid/library/jungroup/adsession/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/jungroup/adsession/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/iab/omid/library/jungroup/adsession/f;

.field public static final enum c:Lcom/iab/omid/library/jungroup/adsession/f;

.field public static final synthetic d:[Lcom/iab/omid/library/jungroup/adsession/f;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/iab/omid/library/jungroup/adsession/f;

    const-string v1, "DEFINED_BY_JAVASCRIPT"

    const-string v2, "definedByJavaScript"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/iab/omid/library/jungroup/adsession/f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/iab/omid/library/jungroup/adsession/f;->b:Lcom/iab/omid/library/jungroup/adsession/f;

    new-instance v1, Lcom/iab/omid/library/jungroup/adsession/f;

    const-string v2, "HTML_DISPLAY"

    const-string v4, "htmlDisplay"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v5}, Lcom/iab/omid/library/jungroup/adsession/f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/iab/omid/library/jungroup/adsession/f;

    const-string v4, "NATIVE_DISPLAY"

    const-string v6, "nativeDisplay"

    const/4 v7, 0x2

    invoke-direct {v2, v4, v6, v7}, Lcom/iab/omid/library/jungroup/adsession/f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v4, Lcom/iab/omid/library/jungroup/adsession/f;

    const-string v6, "VIDEO"

    const-string v8, "video"

    const/4 v9, 0x3

    invoke-direct {v4, v6, v8, v9}, Lcom/iab/omid/library/jungroup/adsession/f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Lcom/iab/omid/library/jungroup/adsession/f;->c:Lcom/iab/omid/library/jungroup/adsession/f;

    new-instance v6, Lcom/iab/omid/library/jungroup/adsession/f;

    const-string v8, "AUDIO"

    const-string v10, "audio"

    const/4 v11, 0x4

    invoke-direct {v6, v8, v10, v11}, Lcom/iab/omid/library/jungroup/adsession/f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/iab/omid/library/jungroup/adsession/f;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    sput-object v8, Lcom/iab/omid/library/jungroup/adsession/f;->d:[Lcom/iab/omid/library/jungroup/adsession/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/iab/omid/library/jungroup/adsession/f;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/jungroup/adsession/f;
    .registers 2

    const-class v0, Lcom/iab/omid/library/jungroup/adsession/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/jungroup/adsession/f;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/jungroup/adsession/f;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/jungroup/adsession/f;->d:[Lcom/iab/omid/library/jungroup/adsession/f;

    invoke-virtual {v0}, [Lcom/iab/omid/library/jungroup/adsession/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/jungroup/adsession/f;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/f;->a:Ljava/lang/String;

    return-object v0
.end method
