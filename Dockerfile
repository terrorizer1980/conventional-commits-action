FROM node:10-alpine

LABEL version="0.0.1"
LABEL repository="http://github.com/bcoe/conventional-commits-action"
LABEL homepage="http://github.com/bcoe/conventional-commits-action"
LABEL maintainer="Ben Coe <bencoe@gmail.com>"

LABEL com.github.actions.name="GitHub Action for Conventional Commits"
LABEL com.github.actions.description="Automatically tag releases and generate a CHANGELOG, based on the Conventional Commits spec."
LABEL com.github.actions.icon="checklist"
LABEL com.github.actions.color="yellow"
COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
