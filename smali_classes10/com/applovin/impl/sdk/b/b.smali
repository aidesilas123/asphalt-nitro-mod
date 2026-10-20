###### Class com.applovin.impl.sdk.b.b (com.applovin.impl.sdk.b.b)
.class public Lcom/applovin/impl/sdk/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/b/b$a;
    }
.end annotation


# instance fields
.field private final aIZ:Landroid/app/Activity;

.field private aJa:Landroid/app/AlertDialog;

.field private aJb:Lcom/applovin/impl/sdk/b/b$a;

.field private final sdk:Lcom/applovin/impl/sdk/n;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/applovin/impl/sdk/n;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/b/b;->sdk:Lcom/applovin/impl/sdk/n;

    iput-object p1, p0, Lcom/applovin/impl/sdk/b/b;->aIZ:Landroid/app/Activity;

    return-void
.end method

.method private synthetic JA()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/b;->aJa:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_7
    return-void
.end method

.method private synthetic Jz()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/b/b;->aIZ:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/b/b;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->aMh:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/b/b;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->aMi:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/b/b;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->aMk:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/impl/sdk/b/h;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/b/h;-><init>(Lcom/applovin/impl/sdk/b/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/b/b;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->aMj:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/impl/sdk/b/g;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/b/g;-><init>(Lcom/applovin/impl/sdk/b/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/b/b;->aJa:Landroid/app/AlertDialog;

    return-void
.end method

.method private static synthetic a(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .registers 3

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/impl/sdk/b/b;->aJb:Lcom/applovin/impl/sdk/b/b$a;

    invoke-interface {p1}, Lcom/applovin/impl/sdk/b/b$a;->sS()V

    return-void
.end method

.method private synthetic b(Lcom/applovin/impl/sdk/ad/e;Ljava/lang/Runnable;)V
    .registers 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/b/b;->aIZ:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->Hd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->He()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1b
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->Hf()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/applovin/impl/sdk/b/k;

    invoke-direct {v1, p2}, Lcom/applovin/impl/sdk/b/k;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/b/b;->aJa:Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic c(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/impl/sdk/b/b;->aJb:Lcom/applovin/impl/sdk/b/b$a;

    invoke-interface {p1}, Lcom/applovin/impl/sdk/b/b$a;->sR()V

    return-void
.end method

.method public static synthetic d(Lcom/applovin/impl/sdk/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/b/b;->JA()V

    return-void
.end method

.method public static synthetic e(Lcom/applovin/impl/sdk/b/b;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/b/b;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f(Lcom/applovin/impl/sdk/b/b;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/b/b;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g(Lcom/applovin/impl/sdk/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/b/b;->Jz()V

    return-void
.end method

.method public static synthetic h(Lcom/applovin/impl/sdk/b/b;Lcom/applovin/impl/sdk/ad/e;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/b/b;->b(Lcom/applovin/impl/sdk/ad/e;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/b/b;->a(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public Jw()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/b;->aIZ:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/sdk/b/f;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/b/f;-><init>(Lcom/applovin/impl/sdk/b/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Jx()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/b;->aIZ:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/sdk/b/i;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/b/i;-><init>(Lcom/applovin/impl/sdk/b/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Jy()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/b;->aJa:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/applovin/impl/sdk/ad/e;Ljava/lang/Runnable;)V
    .registers 5
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/b;->aIZ:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/sdk/b/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/sdk/b/j;-><init>(Lcom/applovin/impl/sdk/b/b;Lcom/applovin/impl/sdk/ad/e;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/b/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/b/b;->aJb:Lcom/applovin/impl/sdk/b/b$a;

    return-void
.end method
