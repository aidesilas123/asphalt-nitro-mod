package com.facebook.gamingservices;

import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.bolts.TaskCompletionSource;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: TournamentUpdater.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TournamentUpdater {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: update$lambda-0, reason: not valid java name */
    public static final void m119update$lambda0(TaskCompletionSource task, GraphResponse response) {
        Intrinsics.checkNotNullParameter(task, "$task");
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.getError() != null) {
            FacebookRequestError error = response.getError();
            if ((error == null ? null : error.getException()) == null) {
                task.setError(new GraphAPIException("Graph API Error"));
                return;
            } else {
                FacebookRequestError error2 = response.getError();
                task.setError(error2 != null ? error2.getException() : null);
                return;
            }
        }
        JSONObject jSONObject = response.getJSONObject();
        String strOptString = jSONObject != null ? jSONObject.optString("success") : null;
        if (strOptString != null) {
            if (!(strOptString.length() == 0)) {
                task.setResult(Boolean.valueOf(strOptString.equals("true")));
                return;
            }
        }
        task.setError(new GraphAPIException("Graph API Error"));
    }

    public final TaskCompletionSource<Boolean> update(Tournament tournament, Number score) {
        Intrinsics.checkNotNullParameter(tournament, "tournament");
        Intrinsics.checkNotNullParameter(score, "score");
        return update(tournament.identifier, score);
    }

    public final TaskCompletionSource<Boolean> update(String identifier, Number score) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(score, "score");
        AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
        if (currentAccessToken == null || currentAccessToken.isExpired()) {
            throw new FacebookException("Attempted to fetch tournament with an invalid access token");
        }
        if (!(currentAccessToken.getGraphDomain() != null && Intrinsics.areEqual(FacebookSdk.GAMING, currentAccessToken.getGraphDomain()))) {
            throw new FacebookException("User is not using gaming login");
        }
        final TaskCompletionSource<Boolean> taskCompletionSource = new TaskCompletionSource<>();
        String strStringPlus = Intrinsics.stringPlus(identifier, "/update_score");
        Bundle bundle = new Bundle();
        bundle.putInt("score", score.intValue());
        new GraphRequest(currentAccessToken, strStringPlus, bundle, HttpMethod.POST, new GraphRequest.Callback() { // from class: com.facebook.gamingservices.j
            @Override // com.facebook.GraphRequest.Callback
            public final void onCompleted(GraphResponse graphResponse) {
                TournamentUpdater.m119update$lambda0(taskCompletionSource, graphResponse);
            }
        }, null, 32, null).executeAsync();
        return taskCompletionSource;
    }
}
