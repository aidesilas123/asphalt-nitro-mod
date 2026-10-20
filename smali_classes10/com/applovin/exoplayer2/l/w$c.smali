###### Class com.applovin.exoplayer2.l.w.c (com.applovin.exoplayer2.l.w$c)
.class final Lcom/applovin/exoplayer2/l/w$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/l/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic acJ:Lcom/applovin/exoplayer2/l/w;


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/l/w;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/w$c;->acJ:Lcom/applovin/exoplayer2/l/w;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/l/w;Lcom/applovin/exoplayer2/l/w$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/l/w$c;-><init>(Lcom/applovin/exoplayer2/l/w;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/w;->m(Landroid/content/Context;)I

    move-result p2

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3c

    invoke-static {}, Lcom/applovin/exoplayer2/l/w$a;->pe()Z

    move-result v1

    if-nez v1, :cond_3c

    const/4 v1, 0x5

    if-ne p2, v1, :cond_3c

    :try_start_13
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/applovin/exoplayer2/l/w$d;

    iget-object v2, p0, Lcom/applovin/exoplayer2/l/w$c;->acJ:Lcom/applovin/exoplayer2/l/w;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/applovin/exoplayer2/l/w$d;-><init>(Lcom/applovin/exoplayer2/l/w;Lcom/applovin/exoplayer2/l/w$1;)V

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_32

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_37

    :cond_32
    const/high16 v0, 0x100000

    invoke-virtual {p1, v1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_37
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    :cond_3c
    iget-object p1, p0, Lcom/applovin/exoplayer2/l/w$c;->acJ:Lcom/applovin/exoplayer2/l/w;

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/l/w;->a(Lcom/applovin/exoplayer2/l/w;I)V

    return-void
.end method
