###### Class com.iab.omid.library.jungroup.adsession.media.a (com.iab.omid.library.jungroup.adsession.media.a)
.class public final enum Lcom/iab/omid/library/jungroup/adsession/media/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/jungroup/adsession/media/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/iab/omid/library/jungroup/adsession/media/a;

.field public static final synthetic c:[Lcom/iab/omid/library/jungroup/adsession/media/a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/iab/omid/library/jungroup/adsession/media/a;

    const-string v1, "CLICK"

    const-string v2, "click"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/iab/omid/library/jungroup/adsession/media/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/iab/omid/library/jungroup/adsession/media/a;->b:Lcom/iab/omid/library/jungroup/adsession/media/a;

    new-instance v1, Lcom/iab/omid/library/jungroup/adsession/media/a;

    const-string v2, "INVITATION_ACCEPTED"

    const-string v4, "invitationAccept"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v5}, Lcom/iab/omid/library/jungroup/adsession/media/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/iab/omid/library/jungroup/adsession/media/a;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lcom/iab/omid/library/jungroup/adsession/media/a;->c:[Lcom/iab/omid/library/jungroup/adsession/media/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/iab/omid/library/jungroup/adsession/media/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/jungroup/adsession/media/a;
    .registers 2

    const-class v0, Lcom/iab/omid/library/jungroup/adsession/media/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/jungroup/adsession/media/a;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/jungroup/adsession/media/a;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/jungroup/adsession/media/a;->c:[Lcom/iab/omid/library/jungroup/adsession/media/a;

    invoke-virtual {v0}, [Lcom/iab/omid/library/jungroup/adsession/media/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/jungroup/adsession/media/a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/media/a;->a:Ljava/lang/String;

    return-object v0
.end method
