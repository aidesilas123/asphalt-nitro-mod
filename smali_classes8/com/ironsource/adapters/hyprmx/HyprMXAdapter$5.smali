###### Class com.json.adapters.hyprmx.HyprMXAdapter.AnonymousClass5 (com.ironsource.adapters.hyprmx.HyprMXAdapter$5)
.class synthetic Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$5;
.super Ljava/lang/Object;
.source "HyprMXAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ironsource$adapters$hyprmx$HyprMXAdapter$EInitState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;->values()[Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$5;->$SwitchMap$com$ironsource$adapters$hyprmx$HyprMXAdapter$EInitState:[I

    :try_start_9
    sget-object v1, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;->NOT_INIT:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$5;->$SwitchMap$com$ironsource$adapters$hyprmx$HyprMXAdapter$EInitState:[I

    sget-object v1, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;->INIT_IN_PROGRESS:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$5;->$SwitchMap$com$ironsource$adapters$hyprmx$HyprMXAdapter$EInitState:[I

    sget-object v1, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;->INIT_SUCCESS:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$5;->$SwitchMap$com$ironsource$adapters$hyprmx$HyprMXAdapter$EInitState:[I

    sget-object v1, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;->INIT_FAIL:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$EInitState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
