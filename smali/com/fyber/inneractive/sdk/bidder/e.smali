###### Class com.fyber.inneractive.sdk.bidder.e (com.fyber.inneractive.sdk.bidder.e)
.class public Lcom/fyber/inneractive/sdk/bidder/e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/bidder/d;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/bidder/d;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/e;->a:Lcom/fyber/inneractive/sdk/bidder/d;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    if-eqz p2, :cond_15e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_160

    :goto_1b
    const/4 p1, -0x1

    goto :goto_69

    :sswitch_1d
    const-string v0, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_1b

    :cond_26
    const/4 p1, 0x6

    goto :goto_69

    :sswitch_28
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_1b

    :cond_31
    const/4 p1, 0x5

    goto :goto_69

    :sswitch_33
    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_1b

    :cond_3c
    const/4 p1, 0x4

    goto :goto_69

    :sswitch_3e
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_1b

    :cond_47
    const/4 p1, 0x3

    goto :goto_69

    :sswitch_49
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto :goto_1b

    :cond_52
    const/4 p1, 0x2

    goto :goto_69

    :sswitch_54
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    goto :goto_1b

    :cond_5d
    const/4 p1, 0x1

    goto :goto_69

    :sswitch_5f
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    goto :goto_1b

    :cond_68
    const/4 p1, 0x0

    :goto_69
    packed-switch p1, :pswitch_data_17e

    goto/16 :goto_15e

    :pswitch_6e
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/e;->a:Lcom/fyber/inneractive/sdk/bidder/d;

    check-cast p1, Lcom/fyber/inneractive/sdk/bidder/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result p2

    if-lt p2, v3, :cond_88

    if-gt p2, v1, :cond_88

    const/4 v4, 0x1

    :cond_88
    iget-object p2, p1, Lcom/fyber/inneractive/sdk/bidder/a;->c:Lcom/fyber/inneractive/sdk/bidder/c;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/bidder/c;->x:Ljava/lang/Boolean;

    if-eqz p2, :cond_94

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eq p2, v4, :cond_15e

    :cond_94
    iget-object p2, p1, Lcom/fyber/inneractive/sdk/bidder/a;->c:Lcom/fyber/inneractive/sdk/bidder/c;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Lcom/fyber/inneractive/sdk/bidder/c;->x:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/bidder/a;->b()V

    goto/16 :goto_15e

    :pswitch_a1
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/e;->a:Lcom/fyber/inneractive/sdk/bidder/d;

    check-cast p1, Lcom/fyber/inneractive/sdk/bidder/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_b2

    if-ne p2, v5, :cond_b3

    :cond_b2
    const/4 v4, 0x1

    :cond_b3
    iget-object p2, p1, Lcom/fyber/inneractive/sdk/bidder/a;->c:Lcom/fyber/inneractive/sdk/bidder/c;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/bidder/c;->y:Ljava/lang/Boolean;

    if-eqz p2, :cond_bf

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eq p2, v4, :cond_15e

    :cond_bf
    iget-object p2, p1, Lcom/fyber/inneractive/sdk/bidder/a;->c:Lcom/fyber/inneractive/sdk/bidder/c;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Lcom/fyber/inneractive/sdk/bidder/c;->y:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/bidder/a;->b()V

    goto/16 :goto_15e

    :pswitch_cc
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/e;->a:Lcom/fyber/inneractive/sdk/bidder/d;

    check-cast p1, Lcom/fyber/inneractive/sdk/bidder/a;

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/bidder/a;->c:Lcom/fyber/inneractive/sdk/bidder/c;

    invoke-static {}, Lcom/fyber/inneractive/sdk/serverapi/a;->l()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Lcom/fyber/inneractive/sdk/bidder/c;->u:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/bidder/a;->b()V

    goto/16 :goto_15e

    :pswitch_dd
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/e;->a:Lcom/fyber/inneractive/sdk/bidder/d;

    check-cast p1, Lcom/fyber/inneractive/sdk/bidder/a;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/bidder/a;->c:Lcom/fyber/inneractive/sdk/bidder/c;

    const-string v1, "state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, v0, Lcom/fyber/inneractive/sdk/bidder/c;->w:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/bidder/a;->b()V

    goto :goto_15e

    :pswitch_f3
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/e;->a:Lcom/fyber/inneractive/sdk/bidder/d;

    check-cast p1, Lcom/fyber/inneractive/sdk/bidder/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, -0x80000000

    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v3, :cond_107

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_108

    :cond_107
    const/4 p2, 0x0

    :goto_108
    iget-object v0, p1, Lcom/fyber/inneractive/sdk/bidder/a;->c:Lcom/fyber/inneractive/sdk/bidder/c;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/bidder/c;->t:Ljava/lang/Boolean;

    if-eq v1, p2, :cond_15e

    iput-object p2, v0, Lcom/fyber/inneractive/sdk/bidder/c;->t:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/bidder/a;->b()V

    goto :goto_15e

    :pswitch_114
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/e;->a:Lcom/fyber/inneractive/sdk/bidder/d;

    check-cast p1, Lcom/fyber/inneractive/sdk/bidder/a;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/bidder/a;->b:Lcom/fyber/inneractive/sdk/serverapi/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "plugged"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_129

    if-eq v0, v3, :cond_129

    if-ne v0, v1, :cond_12a

    :cond_129
    const/4 v4, 0x1

    :cond_12a
    iget-object v0, p1, Lcom/fyber/inneractive/sdk/bidder/a;->c:Lcom/fyber/inneractive/sdk/bidder/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/bidder/c;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_136

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v4, :cond_141

    :cond_136
    iget-object v0, p1, Lcom/fyber/inneractive/sdk/bidder/a;->c:Lcom/fyber/inneractive/sdk/bidder/c;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/bidder/c;->B:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/bidder/a;->b()V

    :cond_141
    iget-object v0, p1, Lcom/fyber/inneractive/sdk/bidder/a;->b:Lcom/fyber/inneractive/sdk/serverapi/b;

    invoke-virtual {v0, p2}, Lcom/fyber/inneractive/sdk/serverapi/b;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/bidder/a;->c:Lcom/fyber/inneractive/sdk/bidder/c;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/bidder/c;->C:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15e

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/bidder/a;->c:Lcom/fyber/inneractive/sdk/bidder/c;

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/bidder/a;->b:Lcom/fyber/inneractive/sdk/serverapi/b;

    invoke-virtual {v1, p2}, Lcom/fyber/inneractive/sdk/serverapi/b;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/fyber/inneractive/sdk/bidder/c;->C:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/bidder/a;->b()V

    :cond_15e
    :goto_15e
    return-void

    nop

    :sswitch_data_160
    .sparse-switch
        -0x5bb23923 -> :sswitch_5f
        -0x5b36f014 -> :sswitch_54
        -0x402b4235 -> :sswitch_49
        0x42f3be3f -> :sswitch_3e
        0x6a0dd473 -> :sswitch_33
        0x7b621251 -> :sswitch_28
        0x7d95a11b -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_114
        :pswitch_f3
        :pswitch_dd
        :pswitch_f3
        :pswitch_cc
        :pswitch_a1
        :pswitch_6e
    .end packed-switch
.end method
