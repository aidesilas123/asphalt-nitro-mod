###### Class com.iab.omid.library.jungroup.walking.a (com.iab.omid.library.jungroup.walking.a)
.class public final Lcom/iab/omid/library/jungroup/walking/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/iab/omid/library/jungroup/walking/b;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/walking/b;)V
    .registers 2

    iput-object p1, p0, Lcom/iab/omid/library/jungroup/walking/a;->a:Lcom/iab/omid/library/jungroup/walking/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/walking/a;->a:Lcom/iab/omid/library/jungroup/walking/b;

    iget-object v0, v0, Lcom/iab/omid/library/jungroup/walking/b;->f:Lcom/iab/omid/library/jungroup/walking/d;

    invoke-virtual {v0}, Lcom/iab/omid/library/jungroup/walking/d;->a()V

    return-void
.end method
