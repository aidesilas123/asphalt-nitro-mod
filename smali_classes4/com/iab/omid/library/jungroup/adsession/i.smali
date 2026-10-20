###### Class com.iab.omid.library.jungroup.adsession.i (com.iab.omid.library.jungroup.adsession.i)
.class public final enum Lcom/iab/omid/library/jungroup/adsession/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/jungroup/adsession/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/iab/omid/library/jungroup/adsession/i;

.field public static final enum c:Lcom/iab/omid/library/jungroup/adsession/i;

.field public static final enum d:Lcom/iab/omid/library/jungroup/adsession/i;

.field public static final synthetic e:[Lcom/iab/omid/library/jungroup/adsession/i;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/iab/omid/library/jungroup/adsession/i;

    const-string v1, "NATIVE"

    const-string v2, "native"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/iab/omid/library/jungroup/adsession/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/iab/omid/library/jungroup/adsession/i;->b:Lcom/iab/omid/library/jungroup/adsession/i;

    new-instance v1, Lcom/iab/omid/library/jungroup/adsession/i;

    const-string v2, "JAVASCRIPT"

    const-string v4, "javascript"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v5}, Lcom/iab/omid/library/jungroup/adsession/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcom/iab/omid/library/jungroup/adsession/i;->c:Lcom/iab/omid/library/jungroup/adsession/i;

    new-instance v2, Lcom/iab/omid/library/jungroup/adsession/i;

    const-string v4, "NONE"

    const-string v6, "none"

    const/4 v7, 0x2

    invoke-direct {v2, v4, v6, v7}, Lcom/iab/omid/library/jungroup/adsession/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lcom/iab/omid/library/jungroup/adsession/i;->d:Lcom/iab/omid/library/jungroup/adsession/i;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/iab/omid/library/jungroup/adsession/i;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lcom/iab/omid/library/jungroup/adsession/i;->e:[Lcom/iab/omid/library/jungroup/adsession/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/iab/omid/library/jungroup/adsession/i;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/jungroup/adsession/i;
    .registers 2

    const-class v0, Lcom/iab/omid/library/jungroup/adsession/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/jungroup/adsession/i;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/jungroup/adsession/i;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/jungroup/adsession/i;->e:[Lcom/iab/omid/library/jungroup/adsession/i;

    invoke-virtual {v0}, [Lcom/iab/omid/library/jungroup/adsession/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/jungroup/adsession/i;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/i;->a:Ljava/lang/String;

    return-object v0
.end method
