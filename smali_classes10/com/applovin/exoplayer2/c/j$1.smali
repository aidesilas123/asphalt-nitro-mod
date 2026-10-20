###### Class com.applovin.exoplayer2.c.j.AnonymousClass1 (com.applovin.exoplayer2.c.j$1)
.class Lcom/applovin/exoplayer2/c/j$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/exoplayer2/c/j;-><init>([Lcom/applovin/exoplayer2/c/g;[Lcom/applovin/exoplayer2/c/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sd:Lcom/applovin/exoplayer2/c/j;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/c/j;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/c/j$1;->sd:Lcom/applovin/exoplayer2/c/j;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/j$1;->sd:Lcom/applovin/exoplayer2/c/j;

    invoke-static {v0}, Lcom/applovin/exoplayer2/c/j;->a(Lcom/applovin/exoplayer2/c/j;)V

    return-void
.end method
