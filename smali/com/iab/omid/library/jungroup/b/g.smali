###### Class com.iab.omid.library.jungroup.b.g (com.iab.omid.library.jungroup.b.g)
.class public final Lcom/iab/omid/library/jungroup/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iab/omid/library/jungroup/a/c;
.implements Lcom/iab/omid/library/jungroup/b/b$a;


# static fields
.field public static f:Lcom/iab/omid/library/jungroup/b/g;


# instance fields
.field public a:F

.field public final b:Lcom/iab/omid/library/jungroup/a/e;

.field public final c:Lcom/iab/omid/library/jungroup/a/b;

.field public d:Lcom/iab/omid/library/jungroup/a/d;

.field public e:Lcom/iab/omid/library/jungroup/b/a;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/a/e;Lcom/iab/omid/library/jungroup/a/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iab/omid/library/jungroup/b/g;->a:F

    iput-object p1, p0, Lcom/iab/omid/library/jungroup/b/g;->b:Lcom/iab/omid/library/jungroup/a/e;

    iput-object p2, p0, Lcom/iab/omid/library/jungroup/b/g;->c:Lcom/iab/omid/library/jungroup/a/b;

    return-void
.end method

.method public static a()Lcom/iab/omid/library/jungroup/b/g;
    .registers 3

    sget-object v0, Lcom/iab/omid/library/jungroup/b/g;->f:Lcom/iab/omid/library/jungroup/b/g;

    if-nez v0, :cond_15

    new-instance v0, Lcom/iab/omid/library/jungroup/a/b;

    invoke-direct {v0}, Lcom/iab/omid/library/jungroup/a/b;-><init>()V

    new-instance v1, Lcom/iab/omid/library/jungroup/a/e;

    invoke-direct {v1}, Lcom/iab/omid/library/jungroup/a/e;-><init>()V

    new-instance v2, Lcom/iab/omid/library/jungroup/b/g;

    invoke-direct {v2, v1, v0}, Lcom/iab/omid/library/jungroup/b/g;-><init>(Lcom/iab/omid/library/jungroup/a/e;Lcom/iab/omid/library/jungroup/a/b;)V

    sput-object v2, Lcom/iab/omid/library/jungroup/b/g;->f:Lcom/iab/omid/library/jungroup/b/g;

    :cond_15
    sget-object v0, Lcom/iab/omid/library/jungroup/b/g;->f:Lcom/iab/omid/library/jungroup/b/g;

    return-object v0
.end method
