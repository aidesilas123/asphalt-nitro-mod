package com.google.protobuf;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.protobuf.Method;
import com.google.protobuf.kotlin.DslList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MethodKt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u001c\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u0000 ?2\u00020\u0001:\u0002?@B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010'\u001a\u00020(H\u0001J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020*J\u0006\u0010,\u001a\u00020*J\u0006\u0010-\u001a\u00020*J\u0006\u0010.\u001a\u00020*J\u0006\u0010/\u001a\u00020*J%\u00100\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010\u0005\u001a\u00020\u000eH\u0007¢\u0006\u0002\b1J+\u00102\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u000e04H\u0007¢\u0006\u0002\b5J\u001d\u00106\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0007¢\u0006\u0002\b7J&\u00108\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010\u0005\u001a\u00020\u000eH\u0087\n¢\u0006\u0002\b9J,\u00108\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u000e04H\u0087\n¢\u0006\u0002\b:J.\u0010;\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010<\u001a\u00020=2\u0006\u0010\u0005\u001a\u00020\u000eH\u0087\u0002¢\u0006\u0002\b>R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001d\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\t\"\u0004\b\u001a\u0010\u000bR$\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\u0015\"\u0004\b\u001d\u0010\u0017R$\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010\t\"\u0004\b \u0010\u000bR$\u0010\"\u001a\u00020!2\u0006\u0010\u0005\u001a\u00020!8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006A"}, d2 = {"Lcom/google/protobuf/MethodKt$Dsl;", "", "_builder", "Lcom/google/protobuf/Method$Builder;", "(Lcom/google/protobuf/Method$Builder;)V", "value", "", "name", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", SDKConstants.PARAM_GAME_REQUESTS_OPTIONS, "Lcom/google/protobuf/kotlin/DslList;", "Lcom/google/protobuf/Option;", "Lcom/google/protobuf/MethodKt$Dsl$OptionsProxy;", "getOptions", "()Lcom/google/protobuf/kotlin/DslList;", "", "requestStreaming", "getRequestStreaming", "()Z", "setRequestStreaming", "(Z)V", "requestTypeUrl", "getRequestTypeUrl", "setRequestTypeUrl", "responseStreaming", "getResponseStreaming", "setResponseStreaming", "responseTypeUrl", "getResponseTypeUrl", "setResponseTypeUrl", "Lcom/google/protobuf/Syntax;", "syntax", "getSyntax", "()Lcom/google/protobuf/Syntax;", "setSyntax", "(Lcom/google/protobuf/Syntax;)V", "_build", "Lcom/google/protobuf/Method;", "clearName", "", "clearRequestStreaming", "clearRequestTypeUrl", "clearResponseStreaming", "clearResponseTypeUrl", "clearSyntax", "add", "addOptions", "addAll", "values", "", "addAllOptions", "clear", "clearOptions", "plusAssign", "plusAssignOptions", "plusAssignAllOptions", "set", "index", "", "setOptions", "Companion", "OptionsProxy", "protobuf-kotlin-lite"}, mv = {1, 6, 0}, xi = 48)
public final class v0 {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Method.b _builder;

    /* JADX INFO: renamed from: com.google.protobuf.v0$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: MethodKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lcom/google/protobuf/MethodKt$Dsl$Companion;", "", "()V", "_create", "Lcom/google/protobuf/MethodKt$Dsl;", "builder", "Lcom/google/protobuf/Method$Builder;", "protobuf-kotlin-lite"}, mv = {1, 6, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ v0 _create(Method.b builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new v0(builder, null);
        }
    }

    private v0(Method.b bVar) {
        this._builder = bVar;
    }

    public /* synthetic */ v0(Method.b bVar, kotlin.jvm.internal.n nVar) {
        this(bVar);
    }

    public final /* synthetic */ Method _build() {
        Method methodBuild = this._builder.build();
        Intrinsics.checkNotNullExpressionValue(methodBuild, "_builder.build()");
        return methodBuild;
    }

    public final /* synthetic */ void addAllOptions(DslList dslList, Iterable values) {
        Intrinsics.checkNotNullParameter(dslList, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        this._builder.addAllOptions(values);
    }

    public final /* synthetic */ void addOptions(DslList dslList, Option value) {
        Intrinsics.checkNotNullParameter(dslList, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        this._builder.addOptions(value);
    }

    public final void clearName() {
        this._builder.clearName();
    }

    public final /* synthetic */ void clearOptions(DslList dslList) {
        Intrinsics.checkNotNullParameter(dslList, "<this>");
        this._builder.clearOptions();
    }

    public final void clearRequestStreaming() {
        this._builder.clearRequestStreaming();
    }

    public final void clearRequestTypeUrl() {
        this._builder.clearRequestTypeUrl();
    }

    public final void clearResponseStreaming() {
        this._builder.clearResponseStreaming();
    }

    public final void clearResponseTypeUrl() {
        this._builder.clearResponseTypeUrl();
    }

    public final void clearSyntax() {
        this._builder.clearSyntax();
    }

    public final String getName() {
        String name = this._builder.getName();
        Intrinsics.checkNotNullExpressionValue(name, "_builder.getName()");
        return name;
    }

    public final /* synthetic */ DslList getOptions() {
        List<Option> optionsList = this._builder.getOptionsList();
        Intrinsics.checkNotNullExpressionValue(optionsList, "_builder.getOptionsList()");
        return new DslList(optionsList);
    }

    public final boolean getRequestStreaming() {
        return this._builder.getRequestStreaming();
    }

    public final String getRequestTypeUrl() {
        String requestTypeUrl = this._builder.getRequestTypeUrl();
        Intrinsics.checkNotNullExpressionValue(requestTypeUrl, "_builder.getRequestTypeUrl()");
        return requestTypeUrl;
    }

    public final boolean getResponseStreaming() {
        return this._builder.getResponseStreaming();
    }

    public final String getResponseTypeUrl() {
        String responseTypeUrl = this._builder.getResponseTypeUrl();
        Intrinsics.checkNotNullExpressionValue(responseTypeUrl, "_builder.getResponseTypeUrl()");
        return responseTypeUrl;
    }

    public final Syntax getSyntax() {
        Syntax syntax = this._builder.getSyntax();
        Intrinsics.checkNotNullExpressionValue(syntax, "_builder.getSyntax()");
        return syntax;
    }

    public final /* synthetic */ void plusAssignAllOptions(DslList<Option, ?> dslList, Iterable<Option> values) {
        Intrinsics.checkNotNullParameter(dslList, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        addAllOptions(dslList, values);
    }

    public final /* synthetic */ void plusAssignOptions(DslList<Option, ?> dslList, Option value) {
        Intrinsics.checkNotNullParameter(dslList, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        addOptions(dslList, value);
    }

    public final void setName(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this._builder.setName(value);
    }

    public final /* synthetic */ void setOptions(DslList dslList, int i, Option value) {
        Intrinsics.checkNotNullParameter(dslList, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        this._builder.setOptions(i, value);
    }

    public final void setRequestStreaming(boolean z) {
        this._builder.setRequestStreaming(z);
    }

    public final void setRequestTypeUrl(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this._builder.setRequestTypeUrl(value);
    }

    public final void setResponseStreaming(boolean z) {
        this._builder.setResponseStreaming(z);
    }

    public final void setResponseTypeUrl(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this._builder.setResponseTypeUrl(value);
    }

    public final void setSyntax(Syntax value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this._builder.setSyntax(value);
    }
}
