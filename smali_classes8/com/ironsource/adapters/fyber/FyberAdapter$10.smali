###### Class com.json.adapters.fyber.FyberAdapter.AnonymousClass10 (com.ironsource.adapters.fyber.FyberAdapter$10)
.class synthetic Lcom/ironsource/adapters/fyber/FyberAdapter$10;
.super Ljava/lang/Object;
.source "FyberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/fyber/FyberAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ironsource$adapters$fyber$FyberAdapter$InitState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/ironsource/adapters/fyber/FyberAdapter$InitState;->values()[Lcom/ironsource/adapters/fyber/FyberAdapter$InitState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/adapters/fyber/FyberAdapter$10;->$SwitchMap$com$ironsource$adapters$fyber$FyberAdapter$InitState:[I

    :try_start_9
    sget-object v1, Lcom/ironsource/adapters/fyber/FyberAdapter$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/fyber/FyberAdapter$InitState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/ironsource/adapters/fyber/FyberAdapter$10;->$SwitchMap$com$ironsource$adapters$fyber$FyberAdapter$InitState:[I

    sget-object v1, Lcom/ironsource/adapters/fyber/FyberAdapter$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/fyber/FyberAdapter$InitState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/ironsource/adapters/fyber/FyberAdapter$10;->$SwitchMap$com$ironsource$adapters$fyber$FyberAdapter$InitState:[I

    sget-object v1, Lcom/ironsource/adapters/fyber/FyberAdapter$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/fyber/FyberAdapter$InitState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/ironsource/adapters/fyber/FyberAdapter$10;->$SwitchMap$com$ironsource$adapters$fyber$FyberAdapter$InitState:[I

    sget-object v1, Lcom/ironsource/adapters/fyber/FyberAdapter$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/fyber/FyberAdapter$InitState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
