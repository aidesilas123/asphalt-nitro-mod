###### Class com.iab.omid.library.jungroup.walking.c.AbstractAsyncTaskC0319c (com.iab.omid.library.jungroup.walking.c$c)
.class public abstract Lcom/iab/omid/library/jungroup/walking/c$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/jungroup/walking/c$c$b;,
        Lcom/iab/omid/library/jungroup/walking/c$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/iab/omid/library/jungroup/walking/c$c$a;

.field public final b:Lcom/iab/omid/library/jungroup/walking/c$c$b;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/walking/c$c$b;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/jungroup/walking/c$c;->b:Lcom/iab/omid/library/jungroup/walking/c$c$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/iab/omid/library/jungroup/walking/c$c;->a:Lcom/iab/omid/library/jungroup/walking/c$c$a;

    if-eqz p1, :cond_c

    check-cast p1, Lcom/iab/omid/library/jungroup/walking/c$d;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/iab/omid/library/jungroup/walking/c$d;->c:Lcom/iab/omid/library/jungroup/walking/c$c;

    invoke-virtual {p1}, Lcom/iab/omid/library/jungroup/walking/c$d;->a()V

    :cond_c
    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iab/omid/library/jungroup/walking/c$c;->a(Ljava/lang/String;)V

    return-void
.end method
