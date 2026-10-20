###### Class com.iab.omid.library.jungroup.adsession.media.c (com.iab.omid.library.jungroup.adsession.media.c)
.class public final enum Lcom/iab/omid/library/jungroup/adsession/media/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/jungroup/adsession/media/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/iab/omid/library/jungroup/adsession/media/c;

.field public static final synthetic c:[Lcom/iab/omid/library/jungroup/adsession/media/c;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/iab/omid/library/jungroup/adsession/media/c;

    const-string v1, "PREROLL"

    const-string v2, "preroll"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/iab/omid/library/jungroup/adsession/media/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/iab/omid/library/jungroup/adsession/media/c;

    const-string v2, "MIDROLL"

    const-string v4, "midroll"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v5}, Lcom/iab/omid/library/jungroup/adsession/media/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/iab/omid/library/jungroup/adsession/media/c;

    const-string v4, "POSTROLL"

    const-string v6, "postroll"

    const/4 v7, 0x2

    invoke-direct {v2, v4, v6, v7}, Lcom/iab/omid/library/jungroup/adsession/media/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v4, Lcom/iab/omid/library/jungroup/adsession/media/c;

    const-string v6, "STANDALONE"

    const-string v8, "standalone"

    const/4 v9, 0x3

    invoke-direct {v4, v6, v8, v9}, Lcom/iab/omid/library/jungroup/adsession/media/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Lcom/iab/omid/library/jungroup/adsession/media/c;->b:Lcom/iab/omid/library/jungroup/adsession/media/c;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/iab/omid/library/jungroup/adsession/media/c;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/iab/omid/library/jungroup/adsession/media/c;->c:[Lcom/iab/omid/library/jungroup/adsession/media/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/iab/omid/library/jungroup/adsession/media/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/jungroup/adsession/media/c;
    .registers 2

    const-class v0, Lcom/iab/omid/library/jungroup/adsession/media/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/jungroup/adsession/media/c;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/jungroup/adsession/media/c;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/jungroup/adsession/media/c;->c:[Lcom/iab/omid/library/jungroup/adsession/media/c;

    invoke-virtual {v0}, [Lcom/iab/omid/library/jungroup/adsession/media/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/jungroup/adsession/media/c;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/media/c;->a:Ljava/lang/String;

    return-object v0
.end method
