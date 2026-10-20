###### Class com.iab.omid.library.jungroup.adsession.c (com.iab.omid.library.jungroup.adsession.c)
.class public final Lcom/iab/omid/library/jungroup/adsession/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/iab/omid/library/jungroup/adsession/i;

.field public final b:Lcom/iab/omid/library/jungroup/adsession/i;

.field public final c:Z

.field public final d:Lcom/iab/omid/library/jungroup/adsession/f;

.field public final e:Lcom/iab/omid/library/jungroup/adsession/h;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/adsession/f;Lcom/iab/omid/library/jungroup/adsession/h;Lcom/iab/omid/library/jungroup/adsession/i;Lcom/iab/omid/library/jungroup/adsession/i;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/jungroup/adsession/c;->d:Lcom/iab/omid/library/jungroup/adsession/f;

    iput-object p2, p0, Lcom/iab/omid/library/jungroup/adsession/c;->e:Lcom/iab/omid/library/jungroup/adsession/h;

    iput-object p3, p0, Lcom/iab/omid/library/jungroup/adsession/c;->a:Lcom/iab/omid/library/jungroup/adsession/i;

    iput-object p4, p0, Lcom/iab/omid/library/jungroup/adsession/c;->b:Lcom/iab/omid/library/jungroup/adsession/i;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/iab/omid/library/jungroup/adsession/c;->c:Z

    return-void
.end method

.method public static a(Lcom/iab/omid/library/jungroup/adsession/f;Lcom/iab/omid/library/jungroup/adsession/h;Lcom/iab/omid/library/jungroup/adsession/i;Lcom/iab/omid/library/jungroup/adsession/i;)Lcom/iab/omid/library/jungroup/adsession/c;
    .registers 6

    sget-object v0, Lcom/iab/omid/library/jungroup/adsession/i;->d:Lcom/iab/omid/library/jungroup/adsession/i;

    if-eq p2, v0, :cond_2a

    sget-object v0, Lcom/iab/omid/library/jungroup/adsession/f;->b:Lcom/iab/omid/library/jungroup/adsession/f;

    const-string v1, "ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript"

    if-ne p0, v0, :cond_15

    sget-object v0, Lcom/iab/omid/library/jungroup/adsession/i;->b:Lcom/iab/omid/library/jungroup/adsession/i;

    if-eq p2, v0, :cond_f

    goto :goto_15

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    sget-object v0, Lcom/iab/omid/library/jungroup/adsession/h;->b:Lcom/iab/omid/library/jungroup/adsession/h;

    if-ne p1, v0, :cond_24

    sget-object v0, Lcom/iab/omid/library/jungroup/adsession/i;->b:Lcom/iab/omid/library/jungroup/adsession/i;

    if-eq p2, v0, :cond_1e

    goto :goto_24

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    :goto_24
    new-instance v0, Lcom/iab/omid/library/jungroup/adsession/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iab/omid/library/jungroup/adsession/c;-><init>(Lcom/iab/omid/library/jungroup/adsession/f;Lcom/iab/omid/library/jungroup/adsession/h;Lcom/iab/omid/library/jungroup/adsession/i;Lcom/iab/omid/library/jungroup/adsession/i;)V

    return-object v0

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Impression owner is none"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
