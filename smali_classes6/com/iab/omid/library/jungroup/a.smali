###### Class com.iab.omid.library.jungroup.a (com.iab.omid.library.jungroup.a)
.class public final Lcom/iab/omid/library/jungroup/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/iab/omid/library/jungroup/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/iab/omid/library/jungroup/c;

    invoke-direct {v0}, Lcom/iab/omid/library/jungroup/c;-><init>()V

    sput-object v0, Lcom/iab/omid/library/jungroup/a;->a:Lcom/iab/omid/library/jungroup/c;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/iab/omid/library/jungroup/a;->a:Lcom/iab/omid/library/jungroup/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "Application Context cannot be null"

    invoke-static {v1, p0}, Lcom/iab/omid/library/jungroup/d/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/iab/omid/library/jungroup/c;->a:Z

    if-nez v1, :cond_56

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iab/omid/library/jungroup/c;->a:Z

    invoke-static {}, Lcom/iab/omid/library/jungroup/b/g;->a()Lcom/iab/omid/library/jungroup/b/g;

    move-result-object v0

    iget-object v1, v0, Lcom/iab/omid/library/jungroup/b/g;->c:Lcom/iab/omid/library/jungroup/a/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/iab/omid/library/jungroup/a/a;

    invoke-direct {v1}, Lcom/iab/omid/library/jungroup/a/a;-><init>()V

    iget-object v2, v0, Lcom/iab/omid/library/jungroup/b/g;->b:Lcom/iab/omid/library/jungroup/a/e;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/iab/omid/library/jungroup/a/d;

    invoke-direct {v2, v3, p0, v1, v0}, Lcom/iab/omid/library/jungroup/a/d;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/iab/omid/library/jungroup/a/a;Lcom/iab/omid/library/jungroup/b/g;)V

    iput-object v2, v0, Lcom/iab/omid/library/jungroup/b/g;->d:Lcom/iab/omid/library/jungroup/a/d;

    sget-object v0, Lcom/iab/omid/library/jungroup/b/b;->d:Lcom/iab/omid/library/jungroup/b/b;

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/jungroup/b/b;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/iab/omid/library/jungroup/d/b;->a:Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/iab/omid/library/jungroup/d/b;->c:F

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/iab/omid/library/jungroup/d/b;->a:Landroid/view/WindowManager;

    sget-object v0, Lcom/iab/omid/library/jungroup/b/d;->b:Lcom/iab/omid/library/jungroup/b/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lcom/iab/omid/library/jungroup/b/d;->a:Landroid/content/Context;

    :cond_56
    return-void
.end method
