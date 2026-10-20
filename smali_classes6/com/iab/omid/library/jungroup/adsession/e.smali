###### Class com.iab.omid.library.jungroup.adsession.e (com.iab.omid.library.jungroup.adsession.e)
.class public final enum Lcom/iab/omid/library/jungroup/adsession/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/jungroup/adsession/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/iab/omid/library/jungroup/adsession/e;

.field public static final enum c:Lcom/iab/omid/library/jungroup/adsession/e;

.field public static final enum d:Lcom/iab/omid/library/jungroup/adsession/e;

.field public static final synthetic e:[Lcom/iab/omid/library/jungroup/adsession/e;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/iab/omid/library/jungroup/adsession/e;

    const-string v1, "HTML"

    const-string v2, "html"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/iab/omid/library/jungroup/adsession/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/iab/omid/library/jungroup/adsession/e;->b:Lcom/iab/omid/library/jungroup/adsession/e;

    new-instance v1, Lcom/iab/omid/library/jungroup/adsession/e;

    const-string v2, "NATIVE"

    const-string v4, "native"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v5}, Lcom/iab/omid/library/jungroup/adsession/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcom/iab/omid/library/jungroup/adsession/e;->c:Lcom/iab/omid/library/jungroup/adsession/e;

    new-instance v2, Lcom/iab/omid/library/jungroup/adsession/e;

    const-string v4, "JAVASCRIPT"

    const-string v6, "javascript"

    const/4 v7, 0x2

    invoke-direct {v2, v4, v6, v7}, Lcom/iab/omid/library/jungroup/adsession/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lcom/iab/omid/library/jungroup/adsession/e;->d:Lcom/iab/omid/library/jungroup/adsession/e;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/iab/omid/library/jungroup/adsession/e;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lcom/iab/omid/library/jungroup/adsession/e;->e:[Lcom/iab/omid/library/jungroup/adsession/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/iab/omid/library/jungroup/adsession/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/jungroup/adsession/e;
    .registers 2

    const-class v0, Lcom/iab/omid/library/jungroup/adsession/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/jungroup/adsession/e;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/jungroup/adsession/e;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/jungroup/adsession/e;->e:[Lcom/iab/omid/library/jungroup/adsession/e;

    invoke-virtual {v0}, [Lcom/iab/omid/library/jungroup/adsession/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/jungroup/adsession/e;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/e;->a:Ljava/lang/String;

    return-object v0
.end method
