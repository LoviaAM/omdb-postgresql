BEGIN;

ALTER TABLE movies          -- ADD FOREIGN KEY (parent_id) REFERENCES movies (id),
                               ADD FOREIGN KEY (series_id) REFERENCES movies (id);
--ALTER TABLE people_aliases     ADD FOREIGN KEY (person_id) REFERENCES people (id);
ALTER TABLE people_links       ADD FOREIGN KEY (person_id) REFERENCES people (id);
ALTER TABLE casts              ADD FOREIGN KEY (movie_id) REFERENCES movies (id),
                               ADD FOREIGN KEY (person_id) REFERENCES people (id),
                               ADD FOREIGN KEY (job_id) REFERENCES job_names (job_id);
ALTER TABLE movie_categories   ADD FOREIGN KEY (movie_id) REFERENCES movies (id),
                               ADD FOREIGN KEY (category_id) REFERENCES categories (category_id);
ALTER TABLE movie_keywords     ADD FOREIGN KEY (movie_id) REFERENCES movies (id),
                               ADD FOREIGN KEY (category_id) REFERENCES categories (category_id);
ALTER TABLE trailers           ADD FOREIGN KEY (movie_id) REFERENCES movies (id);
ALTER TABLE movie_links        ADD FOREIGN KEY (movie_id) REFERENCES movies (id);
ALTER TABLE image_licenses     ADD FOREIGN KEY (image_id) REFERENCES image_ids (image_id);
ALTER TABLE movie_aliases_iso  ADD FOREIGN KEY (movie_id) REFERENCES movies (id);
ALTER TABLE votes              ADD FOREIGN KEY (movie_id) REFERENCES movies (id);
ALTER TABLE movie_languages    ADD FOREIGN KEY (movie_id) REFERENCES movies (id);
ALTER TABLE movie_countries    ADD FOREIGN KEY (movie_id) REFERENCES movies (id);
ALTER TABLE movie_details      ADD FOREIGN KEY (movie_id) REFERENCES movies (id);
ALTER TABLE movie_references   ADD FOREIGN KEY (movie_id) REFERENCES movies (id),
                               ADD FOREIGN KEY (referenced_id) REFERENCES movies (id);
ALTER TABLE movie_abstracts_de ADD FOREIGN KEY (movie_id) REFERENCES movies (id);
ALTER TABLE movie_abstracts_en ADD FOREIGN KEY (movie_id) REFERENCES movies (id);

COMMIT;
